<?php

if (!function_exists('sanitizeFilename')) {
    require_once __DIR__ . '/security.php';
}

function sanitize($data) {
    if (is_array($data)) {
        return array_map('sanitize', $data);
    }
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data, ENT_QUOTES, 'UTF-8');
    return $data;
}

function escape($data) {
    return htmlspecialchars($data, ENT_QUOTES, 'UTF-8');
}

function sanitizeTextValue($value, $default = '') {
    if (is_array($value)) {
        return $default;
    }

    $text = trim((string)$value);
    $text = strip_tags($text);
    $text = preg_replace('/[\x00-\x1F\x7F]/', '', $text);
    $text = str_replace(["\r", "\n", "\t"], ' ', $text);
    $text = preg_replace('/\s{2,}/', ' ', $text);

    return $text === '' ? $default : $text;
}

function ensureUploadDirectoryWritable() {
    if (!is_dir(UPLOAD_PATH)) {
        if (!@mkdir(UPLOAD_PATH, 0755, true) && !is_dir(UPLOAD_PATH)) {
            return false;
        }
    }

    if (!is_writable(UPLOAD_PATH)) {
        @chmod(UPLOAD_PATH, 0777);
    }

    return is_writable(UPLOAD_PATH);
}

function isValidEmail($email) {
    return filter_var($email, FILTER_VALIDATE_EMAIL) !== false;
}

function isValidPhone($phone) {
    return preg_match('/^(09|\+639)\d{9}$/', $phone);
}

function generateCSRFToken() {
    if (empty($_SESSION[CSRF_TOKEN_NAME])) {
        $_SESSION[CSRF_TOKEN_NAME] = bin2hex(random_bytes(32));
    }
    return $_SESSION[CSRF_TOKEN_NAME];
}

function verifyCSRFToken($token) {
    if (!isset($_SESSION[CSRF_TOKEN_NAME]) || !isset($token)) {
        return false;
    }
    return hash_equals($_SESSION[CSRF_TOKEN_NAME], $token);
}

function generateRandomString($length = 10) {
    return bin2hex(random_bytes($length / 2));
}

function hashPassword($password) {
    return password_hash($password, PASSWORD_BCRYPT, ['cost' => PASSWORD_COST]);
}

function verifyPassword($password, $hash) {
    return password_verify($password, $hash);
}

function redirect($url) {
    header("Location: " . $url);
    exit();
}

function appUrl($path = '') {
    $base = rtrim(APP_URL, '/');
    $cleanPath = ltrim((string)$path, '/');
    return $cleanPath === '' ? $base : ($base . '/' . $cleanPath);
}

function routeUrl($route, array $query = []) {
    $routes = [
        'home' => '',
        'login' => 'login',
        'logout' => 'logout',
        'dashboard' => 'dashboard',
        'services' => 'services',
        'reports' => 'reports',
        'inventory' => 'inventory',
        'staff' => 'staff',
        'settings' => 'settings',
        'settings_print_template' => 'settings/print-template',
        'settings_system_logo' => 'settings/system-logo',
        'settings_role_permissions' => 'settings/role-permissions',
        'settings_announcement' => 'settings/announcement',
        'profile' => 'profile',
        'job_orders' => 'job-orders',
        'job_orders_create' => 'job-orders/create',
    ];

    $path = $routes[$route] ?? trim((string)$route, '/');
    $url = appUrl($path);

    if (!empty($query)) {
        $queryString = http_build_query($query);
        if ($queryString !== '') {
            $url .= '?' . $queryString;
        }
    }

    return $url;
}

function isLoggedIn() {
    return isset($_SESSION['user_id']) && !empty($_SESSION['user_id']);
}

function normalizeRole($role) {
    $normalized = strtolower(trim((string)$role));
    $aliases = [
        'system_administrator' => 'admin',
        'system_admin' => 'admin',
        'administrator' => 'admin',
    ];
    return $aliases[$normalized] ?? $normalized;
}

function hasRole($role) {
    if (!isset($_SESSION['user_role'])) {
        return false;
    }
    return normalizeRole($_SESSION['user_role']) === normalizeRole($role);
}

function hasAnyRole($roles) {
    if (!isset($_SESSION['user_role'])) {
        return false;
    }
    $currentRole = normalizeRole($_SESSION['user_role']);
    foreach ((array)$roles as $role) {
        if ($currentRole === normalizeRole($role)) {
            return true;
        }
    }
    return false;
}

function requireLogin() {
    if (!isLoggedIn()) {
        redirect(routeUrl('login'));
    }
}

function requireRole($role) {
    requireLogin();
    if (!hasRole($role)) {
        redirect(routeUrl('dashboard'));
    }
}

function formatDate($date, $format = DISPLAY_DATE_FORMAT) {
    if (empty($date)) return '';
    return date($format, strtotime($date));
}

function formatDateTime($datetime, $format = DISPLAY_DATETIME_FORMAT) {
    if (empty($datetime)) return '';
    return date($format, strtotime($datetime));
}

function formatCurrency($amount) {
    return '₱' . number_format($amount, 2);
}

function getDefaultPrintTemplateSettings() {
    return [
        'company_name' => 'THE AUTODOK',
        'company_subtitle' => 'Automotive Care Services',
        'contact_line' => 'Tel: (02) XXX-XXXX | autodok@email.com',
        'address_line' => '123 Sample Street, City, Philippines',
        'tax_info' => 'Non VAT Reg. ; TIN 652-842-009-00000',
        'logo_url' => APP_URL . '/assets/images/logo.png',
        'footer_note' => 'Thank you for choosing The Autodok - Automotive Care Services',
        'terms_conditions' => 'All services rendered are subject to warranty as per company policy. The client agrees to the estimated cost and any additional charges incurred during the repair process. Payment is due upon completion unless otherwise arranged.',
        'header_template' => '<table style="width:100%;border-collapse:collapse;margin-bottom:8px;"><tr><td style="width:110px;vertical-align:middle;padding-right:12px;"><img src="{{logo_url}}" style="width:100px;height:100px;object-fit:contain;" alt="Logo"></td><td style="vertical-align:middle;"><div style="font-size:17pt;font-weight:700;letter-spacing:2px;line-height:1.1;">{{company_name}}</div><div style="font-size:9pt;color:#444;">{{company_subtitle}}</div><div style="font-size:8.5pt;color:#666;">{{contact_line}}</div><div style="font-size:8.5pt;color:#666;">{{address_line}}</div><div style="font-size:8.5pt;color:#666;">{{tax_info}}</div></td><td style="text-align:right;vertical-align:middle;font-size:9pt;"><div style="font-size:12pt;font-weight:700;">{{document_title}}</div><div style="color:#555;"># {{document_number}}</div><div style="margin-top:4px;"><strong>Date:</strong> {{document_date}}</div></td></tr></table><hr style="border:none;border-top:1.5px solid #333;margin-bottom:10px;">',
        'footer_template' => '<div style="text-align:center;font-size:8pt;color:#999;margin-top:10px;border-top:1px solid #ddd;padding-top:5px;">{{footer_note}}</div>'
    ];
}

function getDefaultSystemBrandingSettings() {
    $activeShop = getActiveShopOption();
    $defaultName = $activeShop['name'] ?? APP_NAME;
    $defaultSubtitle = (($activeShop['key'] ?? '') === 'autodok_prime')
        ? 'Prime Automotive Care Services'
        : 'Automotive Care Services';

    return [
        'system_logo_url' => APP_URL . '/assets/images/logo.png',
        'sidebar_brand_name' => $defaultName,
        'sidebar_brand_subtitle' => $defaultSubtitle,
    ];
}

function getActiveShopOption($shopKey = null) {
    if (function_exists('resolveShopOption')) {
        $candidate = $shopKey;
        if ($candidate === null || $candidate === '') {
            $candidate = $_SESSION['shop_key'] ?? '';
        }
        return resolveShopOption($candidate);
    }

    return [
        'key' => 'default',
        'name' => APP_NAME,
        'db_name' => DB_NAME,
    ];
}

function getScopedSettingsFilePath($baseFilename, $shopKey = null) {
    $shop = getActiveShopOption($shopKey);
    $shopKey = strtolower((string)($shop['key'] ?? 'default'));
    $shopKey = preg_replace('/[^a-z0-9_-]/', '_', $shopKey);
    if ($shopKey === '' || $shopKey === null) {
        $shopKey = 'default';
    }

    return UPLOAD_PATH . $baseFilename . '_' . $shopKey . '.json';
}

function getScopedUploadDirectoryPath($shopKey = null) {
    $shop = getActiveShopOption($shopKey);
    $resolvedShopKey = strtolower((string)($shop['key'] ?? 'default'));
    $resolvedShopKey = preg_replace('/[^a-z0-9_-]/', '_', $resolvedShopKey);
    if ($resolvedShopKey === '' || $resolvedShopKey === null) {
        $resolvedShopKey = 'default';
    }

    $dir = rtrim(UPLOAD_PATH, '/') . '/' . $resolvedShopKey;
    if (!is_dir($dir)) {
        @mkdir($dir, 0775, true);
    }

    if (is_dir($dir) && !is_writable($dir)) {
        @chmod($dir, 0777);
    }

    if (!is_dir($dir) || !is_writable($dir)) {
        return rtrim(UPLOAD_PATH, '/');
    }

    return $dir;
}

function getUploadFilePath($filename, $shopKey = null) {
    $safeFilename = sanitizeFilename((string)$filename);
    $basePath = getScopedUploadDirectoryPath($shopKey);
    return rtrim($basePath, '/') . '/' . $safeFilename;
}

function getScopedUploadUrl($filename, $shopKey = null) {
    $safeFilename = rawurlencode(sanitizeFilename((string)$filename));
    $shop = getActiveShopOption($shopKey);
    $resolvedShopKey = strtolower((string)($shop['key'] ?? 'default'));
    $resolvedShopKey = preg_replace('/[^a-z0-9_-]/', '_', $resolvedShopKey);
    if ($resolvedShopKey === '' || $resolvedShopKey === null) {
        $resolvedShopKey = 'default';
    }

    return rtrim(UPLOAD_URL, '/') . '/' . rawurlencode($resolvedShopKey) . '/' . $safeFilename;
}

function getSystemBrandingSettingsFilePath($shopKey = null) {
    return getScopedSettingsFilePath('system_branding_settings', $shopKey);
}

function getLegacySystemBrandingSettingsFilePath() {
    return UPLOAD_PATH . 'system_branding_settings.json';
}

function getSystemBrandingSettings($shopKey = null) {
    $defaults = getDefaultSystemBrandingSettings();
    $filePath = getSystemBrandingSettingsFilePath($shopKey);

    if (!file_exists($filePath)) {
        $legacyPath = getLegacySystemBrandingSettingsFilePath();
        if ($legacyPath !== $filePath && file_exists($legacyPath)) {
            $filePath = $legacyPath;
        }
    }

    if (!file_exists($filePath)) {
        return $defaults;
    }

    $raw = file_get_contents($filePath);
    if ($raw === false || trim($raw) === '') {
        return $defaults;
    }

    $decoded = json_decode($raw, true);
    if (!is_array($decoded)) {
        return $defaults;
    }

    return array_merge($defaults, $decoded);
}

function saveSystemBrandingSettings($settings) {
    $defaults = getDefaultSystemBrandingSettings();
    $merged = array_merge($defaults, (array)$settings);

    $normalized = [];
    foreach ($defaults as $key => $defaultValue) {
        $value = sanitizeTextValue($merged[$key] ?? $defaultValue, $defaultValue);
        $normalized[$key] = $value === '' ? $defaultValue : $value;
    }

    if (!ensureUploadDirectoryWritable()) {
        return false;
    }

    $filePath = getSystemBrandingSettingsFilePath();
    $json = json_encode($normalized, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($json === false) {
        return false;
    }

    if (file_exists($filePath) && !is_writable($filePath)) {
        @unlink($filePath);
    }

    $tmpPath = $filePath . '.tmp';
    if (file_put_contents($tmpPath, $json, LOCK_EX) === false) {
        return false;
    }

    @chmod($tmpPath, 0664);
    if (!@rename($tmpPath, $filePath)) {
        @unlink($tmpPath);
        return false;
    }

    return true;
}

function getPrintTemplateSettingsFilePath($shopKey = null) {
    return getScopedSettingsFilePath('print_template_settings', $shopKey);
}

function getLegacyPrintTemplateSettingsFilePath() {
    return UPLOAD_PATH . 'print_template_settings.json';
}

function getPrintTemplateSettings($shopKey = null) {
    $defaults = getDefaultPrintTemplateSettings();
    $filePath = getPrintTemplateSettingsFilePath($shopKey);

    if (!file_exists($filePath)) {
        $legacyPath = getLegacyPrintTemplateSettingsFilePath();
        if ($legacyPath !== $filePath && file_exists($legacyPath)) {
            $filePath = $legacyPath;
        }
    }

    if (!file_exists($filePath)) {
        return $defaults;
    }

    $raw = file_get_contents($filePath);
    if ($raw === false || trim($raw) === '') {
        return $defaults;
    }

    $decoded = json_decode($raw, true);
    if (!is_array($decoded)) {
        return $defaults;
    }

    $merged = array_merge($defaults, $decoded);

    // Inject {{address_line}} into saved templates that predate this field
    if (!empty($merged['header_template']) && strpos($merged['header_template'], '{{address_line}}') === false) {
        $merged['header_template'] = str_replace(
            '{{contact_line}}</div></td>',
            '{{contact_line}}</div><div style="font-size:8.5pt;color:#666;">{{address_line}}</div></td>',
            $merged['header_template']
        );
    }

    // Inject {{tax_info}} into saved templates that predate this field
    if (!empty($merged['header_template']) && strpos($merged['header_template'], '{{tax_info}}') === false) {
        $merged['header_template'] = str_replace(
            '{{address_line}}</div></td>',
            '{{address_line}}</div><div style="font-size:8.5pt;color:#666;">{{tax_info}}</div></td>',
            $merged['header_template']
        );
    }

    // Force tax_info style to match address_line (remove any bold/weight)
    if (!empty($merged['header_template']) && strpos($merged['header_template'], '{{tax_info}}') !== false) {
        $merged['header_template'] = preg_replace(
            '/<div style="[^"]*">(\{\{tax_info\}\})<\/div>/',
            '<div style="font-size:8.5pt;color:#666;">{{tax_info}}</div>',
            $merged['header_template']
        );
    }

    // Force logo size to 100x100px regardless of saved template
    if (!empty($merged['header_template'])) {
        $merged['header_template'] = preg_replace(
            '/width:\s*\d+px;\s*height:\s*\d+px;\s*object-fit:\s*contain;/',
            'width:100px;height:100px;object-fit:contain;',
            $merged['header_template']
        );
        // Fix container td width
        $merged['header_template'] = preg_replace(
            '/width:\s*\d+px;\s*vertical-align:\s*(middle|top);\s*padding-right:\s*12px;(padding-top:\s*\d+px;)?/',
            'width:110px;vertical-align:middle;padding-right:12px;',
            $merged['header_template']
        );
        // Ensure all cells use vertical-align:middle
        $merged['header_template'] = preg_replace('/vertical-align:\s*top;(padding-top:\s*\d+px;)?/', 'vertical-align:middle;', $merged['header_template']);
    }

    return $merged;
}

function savePrintTemplateSettings($settings) {
    $defaults = getDefaultPrintTemplateSettings();
    $merged = array_merge($defaults, (array)$settings);

    $normalized = [];
    foreach ($defaults as $key => $defaultValue) {
        $rawValue = $merged[$key] ?? $defaultValue;
        if (in_array($key, ['header_template', 'footer_template'], true)) {
            $normalized[$key] = trim((string)$rawValue);
            if ($normalized[$key] === '') {
                $normalized[$key] = $defaultValue;
            }
        } else {
            $value = sanitizeTextValue($rawValue, $defaultValue);
            $normalized[$key] = $value === '' ? $defaultValue : $value;
        }
    }

    if (!ensureUploadDirectoryWritable()) {
        return false;
    }

    $filePath = getPrintTemplateSettingsFilePath();
    $json = json_encode($normalized, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($json === false) {
        return false;
    }

    // If the file exists but is not writable (common when ownership changed),
    // write a temp file and replace the target atomically.
    if (file_exists($filePath) && !is_writable($filePath)) {
        @unlink($filePath);
    }

    $tmpPath = $filePath . '.tmp';
    if (file_put_contents($tmpPath, $json, LOCK_EX) === false) {
        return false;
    }

    @chmod($tmpPath, 0664);
    if (!@rename($tmpPath, $filePath)) {
        @unlink($tmpPath);
        return false;
    }

    return true;
}

function getReportExpensesFilePath() {
    return UPLOAD_PATH . 'report_expenses.json';
}

function getReportExpenses() {
    $filePath = getReportExpensesFilePath();
    if (!file_exists($filePath)) {
        return [];
    }

    $raw = file_get_contents($filePath);
    if ($raw === false || trim($raw) === '') {
        return [];
    }

    $decoded = json_decode($raw, true);
    return is_array($decoded) ? $decoded : [];
}

function saveReportExpenses($expenses) {
    if (!ensureUploadDirectoryWritable()) {
        return false;
    }

    $filePath = getReportExpensesFilePath();
    $json = json_encode(array_values((array)$expenses), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($json === false) {
        return false;
    }

    if (file_exists($filePath) && !is_writable($filePath)) {
        @unlink($filePath);
    }

    $tmpPath = $filePath . '.tmp';
    if (file_put_contents($tmpPath, $json, LOCK_EX) === false) {
        return false;
    }

    @chmod($tmpPath, 0664);
    if (!@rename($tmpPath, $filePath)) {
        @unlink($tmpPath);
        return false;
    }

    return true;
}

function addReportExpense($expenseData) {
    $amount = (float)($expenseData['amount'] ?? 0);
    if ($amount <= 0) {
        return false;
    }

    $expenseDate = (string)($expenseData['expense_date'] ?? date('Y-m-d'));
    $timestamp = strtotime($expenseDate);
    if ($timestamp === false) {
        $expenseDate = date('Y-m-d');
    } else {
        $expenseDate = date('Y-m-d', $timestamp);
    }

    $expenses = getReportExpenses();
    $expenses[] = [
        'id' => uniqid('exp_', true),
        'expense_date' => $expenseDate,
        'category' => trim((string)($expenseData['category'] ?? 'General')),
        'description' => trim((string)($expenseData['description'] ?? '')),
        'amount' => round($amount, 2),
        'created_by' => trim((string)($expenseData['created_by'] ?? 'System')),
        'created_at' => date('Y-m-d H:i:s')
    ];

    return saveReportExpenses($expenses);
}

function getAnnouncementFilePath() {
    return UPLOAD_PATH . 'announcements.json';
}

function getAnnouncements() {
    $filePath = getAnnouncementFilePath();
    if (!file_exists($filePath)) return [];
    $json = file_get_contents($filePath);
    if ($json === false || $json === '') return [];
    $data = json_decode($json, true);
    return is_array($data) ? $data : [];
}

function getAnnouncement() {
    // Returns first enabled announcement (for backward compat)
    $all = getAnnouncements();
    foreach ($all as $a) {
        if (!empty($a['enabled'])) return $a;
    }
    return null;
}

function getActiveAnnouncements() {
    $all = getAnnouncements();
    return array_values(array_filter($all, function($a) { return !empty($a['enabled']); }));
}

function saveAnnouncements($data) {
    if (!ensureUploadDirectoryWritable()) return false;
    $filePath = getAnnouncementFilePath();
    $json = json_encode(array_values($data), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
    return file_put_contents($filePath, $json, LOCK_EX) !== false;
}

function saveAnnouncement($data) {
    // Legacy: saves as single announcement (index 0)
    $all = getAnnouncements();
    if (empty($all)) {
        $data['id'] = uniqid('ann_', true);
        $all[] = $data;
    } else {
        $data['id'] = $all[0]['id'] ?? uniqid('ann_', true);
        $all[0] = $data;
    }
    return saveAnnouncements($all);
}

function recordTechnicianPoints($technicianId, $jobOrderId, $reason, $points) {
    try {
        $db = Database::getInstance();
        $db->query(
            "INSERT INTO technician_points (technician_id, job_order_id, reason, points, created_at) VALUES (?,?,?,?,NOW())",
            [(int)$technicianId, $jobOrderId ? (int)$jobOrderId : null, $reason, (float)$points]
        );
    } catch (\Exception $e) {
        // Table may not exist yet — fail silently
    }
}

function getReportIncomeFilePath() {
    return UPLOAD_PATH . 'report_manual_income.json';
}

function getReportManualIncome() {
    $filePath = getReportIncomeFilePath();
    if (!file_exists($filePath)) {
        return [];
    }
    $json = file_get_contents($filePath);
    if ($json === false || $json === '') {
        return [];
    }
    $data = json_decode($json, true);
    return is_array($data) ? $data : [];
}

function saveReportManualIncome($entries) {
    if (!ensureUploadDirectoryWritable()) {
        return false;
    }
    $filePath = getReportIncomeFilePath();
    $json = json_encode(array_values((array)$entries), JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    if ($json === false) {
        return false;
    }
    return file_put_contents($filePath, $json, LOCK_EX) !== false;
}

function addReportManualIncome($incomeData) {
    $amount = (float)($incomeData['amount'] ?? 0);
    if ($amount <= 0) {
        return false;
    }
    $entries = getReportManualIncome();
    $entries[] = [
        'id' => uniqid('inc_', true),
        'income_date' => $incomeData['income_date'] ?? date('Y-m-d'),
        'description' => trim((string)($incomeData['description'] ?? '')),
        'amount' => $amount,
        'created_by' => $incomeData['created_by'] ?? 'System',
        'created_at' => date('Y-m-d H:i:s'),
    ];
    return saveReportManualIncome($entries);
}

function buildNotificationMessageTemplate($actorName, $action, $subject, $details = '') {
    $actor = trim((string)$actorName);
    $verb = trim((string)$action);
    $target = trim((string)$subject);
    $extra = trim((string)$details);

    $base = trim($actor . ' ' . $verb . ' ' . $target);
    if ($base === '') {
        return '';
    }

    if ($extra !== '') {
        return $base . ' (' . $extra . ').';
    }

    return $base . '.';
}

function notifyRoles($type, $title, $message, $roles = [], $options = []) {
    try {
        $db = Database::getInstance();

        $type = trim((string)$type);
        $allowedTypes = ['job_assigned', 'job_status', 'payment', 'low_stock', 'system', 'staff_update', 'account_update'];
        if (!in_array($type, $allowedTypes, true)) {
            $type = 'system';
        }

        $title = trim((string)$title);
        $message = trim((string)$message);
        if ($title === '' || $message === '') {
            return false;
        }

        $normalizedRoles = array_values(array_unique(array_filter(array_map('normalizeRole', (array)$roles))));
        if (empty($normalizedRoles)) {
            return false;
        }

        $excludeUserId = isset($options['exclude_user_id']) ? (int)$options['exclude_user_id'] : 0;
        $referenceType = trim((string)($options['reference_type'] ?? ''));
        $referenceId = isset($options['reference_id']) && $options['reference_id'] !== null
            ? (int)$options['reference_id']
            : null;

        $isTypeAllowedForRole = static function ($role, $notificationType) {
            $role = normalizeRole($role);

            $allowedByRole = [
                'admin' => ['job_assigned', 'job_status', 'payment', 'low_stock', 'system', 'staff_update', 'account_update'],
                'cashier' => ['job_assigned', 'job_status', 'payment', 'low_stock', 'system', 'staff_update', 'account_update'],
                'service_adviser' => ['job_assigned', 'job_status', 'payment', 'system'],
                'chief_mechanic' => ['job_assigned', 'job_status', 'system'],
                'technician' => ['job_assigned', 'job_status'],
            ];

            if (!isset($allowedByRole[$role])) {
                return false;
            }

            return in_array($notificationType, $allowedByRole[$role], true);
        };

        $isTechnicianAssignedToJo = static function ($dbInstance, $technicianId, $jobOrderId) {
            if ($technicianId <= 0 || $jobOrderId <= 0) {
                return false;
            }

            $row = $dbInstance->fetch(
                "SELECT 1 AS assigned FROM job_order_technicians WHERE technician_id = ? AND job_order_id = ? LIMIT 1",
                [(int)$technicianId, (int)$jobOrderId]
            );

            return !empty($row);
        };

        $recipientMap = []; // [user_id => role]

        $staffPlaceholders = implode(',', array_fill(0, count($normalizedRoles), '?'));
        $staffRows = $db->fetchAll(
            "SELECT id, role FROM staff WHERE status='active' AND role IN ($staffPlaceholders)",
            $normalizedRoles
        );
        foreach ($staffRows as $row) {
            $sid = (int)($row['id'] ?? 0);
            if ($sid > 0) {
                $recipientMap[$sid] = normalizeRole($row['role'] ?? '');
            }
        }

        if (in_array('admin', $normalizedRoles, true)) {
            $adminUsers = $db->fetchAll("SELECT id, role FROM users WHERE status='active' AND role='admin'");
            foreach ($adminUsers as $row) {
                $uid = (int)($row['id'] ?? 0);
                if ($uid > 0) {
                    $recipientMap[$uid] = normalizeRole($row['role'] ?? 'admin');
                }
            }
        }

        $recipientIds = array_values(array_filter(array_keys($recipientMap), static function ($id) use ($excludeUserId) {
            return (int)$id > 0 && (int)$id !== $excludeUserId;
        }));

        if (empty($recipientIds)) {
            return true;
        }

        foreach ($recipientIds as $recipientId) {
            $recipientRole = normalizeRole($recipientMap[$recipientId] ?? '');
            if (!$isTypeAllowedForRole($recipientRole, $type)) {
                continue;
            }

            if (
                $recipientRole === 'technician'
                && $referenceType === 'job_order'
                && $referenceId !== null
                && !$isTechnicianAssignedToJo($db, (int)$recipientId, (int)$referenceId)
            ) {
                continue;
            }

            $db->query(
                "INSERT INTO notifications (user_id, type, title, message, reference_type, reference_id, is_read)
                 VALUES (?, ?, ?, ?, ?, ?, 0)",
                [
                    (int)$recipientId,
                    $type,
                    $title,
                    $message,
                    $referenceType !== '' ? $referenceType : null,
                    $referenceId,
                ]
            );
        }

        return true;
    } catch (Throwable $e) {
        error_log('notifyRoles error: ' . $e->getMessage());
        return false;
    }
}

function timeAgo($datetime) {
    $timestamp = strtotime($datetime);
    $difference = time() - $timestamp;
    
    if ($difference < 60) {
        return 'just now';
    } elseif ($difference < 3600) {
        $minutes = floor($difference / 60);
        return $minutes . ' minute' . ($minutes > 1 ? 's' : '') . ' ago';
    } elseif ($difference < 86400) {
        $hours = floor($difference / 3600);
        return $hours . ' hour' . ($hours > 1 ? 's' : '') . ' ago';
    } elseif ($difference < 604800) {
        $days = floor($difference / 86400);
        return $days . ' day' . ($days > 1 ? 's' : '') . ' ago';
    } else {
        return formatDate($datetime);
    }
}

function generateJobOrderNumber() {
    $db = Database::getInstance();

    $result = $db->fetch(
        "SELECT MAX(CAST(SUBSTRING(job_order_number, 3) AS UNSIGNED)) AS max_num
         FROM job_orders
         WHERE job_order_number REGEXP '^JO[0-9]+$'"
    );

    $newNumber = (int)($result['max_num'] ?? 0) + 1;
    return 'JO' . str_pad((string)$newNumber, 3, '0', STR_PAD_LEFT);
}

function uploadFile($file, $allowedTypes = ALLOWED_FILE_TYPES, $maxSize = MAX_FILE_SIZE) {
    if (!isset($file['error']) || is_array($file['error'])) {
        return ['success' => false, 'message' => 'Invalid file upload'];
    }

    if ($file['error'] !== UPLOAD_ERR_OK) {
        $uploadErrorMessages = [
            UPLOAD_ERR_INI_SIZE   => 'The uploaded file exceeds the server upload_max_filesize limit.',
            UPLOAD_ERR_FORM_SIZE  => 'The uploaded file exceeds the form MAX_FILE_SIZE limit.',
            UPLOAD_ERR_PARTIAL    => 'The file was only partially uploaded. Please try again.',
            UPLOAD_ERR_NO_FILE    => 'No file was uploaded.',
            UPLOAD_ERR_NO_TMP_DIR => 'Missing temporary upload directory on server.',
            UPLOAD_ERR_CANT_WRITE => 'Failed to write uploaded file to disk.',
            UPLOAD_ERR_EXTENSION  => 'A server extension stopped the file upload.'
        ];
        return ['success' => false, 'message' => $uploadErrorMessages[$file['error']] ?? 'File upload error'];
    }

    if (empty($file['tmp_name']) || !is_file($file['tmp_name'])) {
        return ['success' => false, 'message' => 'Invalid temporary upload file'];
    }

    if ($file['size'] > $maxSize) {
        return ['success' => false, 'message' => 'File size exceeds limit'];
    }

    $extension = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
    $normalizedAllowed = array_map('strtolower', (array)$allowedTypes);
    if (!in_array($extension, $normalizedAllowed, true)) {
        return ['success' => false, 'message' => 'File type not allowed'];
    }

    if (!ensureUploadDirectoryWritable()) {
        return ['success' => false, 'message' => 'Upload directory is not writable'];
    }

    $filename = sanitizeFilename(uniqid() . '_' . time() . '.' . $extension);
    $destination = UPLOAD_PATH . $filename;

    if (!@copy($file['tmp_name'], $destination) && !@move_uploaded_file($file['tmp_name'], $destination)) {
        return ['success' => false, 'message' => 'Failed to move uploaded file'];
    }

    @chmod($destination, 0644);

    return ['success' => true, 'filename' => $filename, 'url' => UPLOAD_URL . $filename];
}

function getRoleLabel($role) {
    $role = normalizeRole($role);
    $labels = [
        'admin' => 'Admin',
        'cashier' => 'Cashier',
        'chief_mechanic' => 'Chief Mechanic',
        'service_adviser' => 'Service Adviser',
        'technician' => 'Technician',
        'lead_man' => 'Lead Man',
        'stockman' => 'Stockman'
    ];
    return $labels[$role] ?? ucfirst(str_replace('_', ' ', $role));
}

function getStatusLabel($status) {
    $labels = [
        'active' => 'Active',
        'inactive' => 'Inactive',
        'on_leave' => 'On Leave'
    ];
    return $labels[$status] ?? ucfirst(str_replace('_', ' ', $status));
}

function deleteFile($filename) {
    $filepath = UPLOAD_PATH . $filename;
    if (file_exists($filepath)) {
        return unlink($filepath);
    }
    return false;
}

function jsonResponse($data, $statusCode = 200) {
    http_response_code($statusCode);
    header('Content-Type: application/json');
    echo json_encode($data);
    exit();
}

function getClientIP() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        return $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
        return $_SERVER['REMOTE_ADDR'];
    }
}

function getUserAgent() {
    return $_SERVER['HTTP_USER_AGENT'] ?? '';
}

function logActivity($userId, $action, $description = null) {
    try {
        $db = Database::getInstance();
        $sql = "INSERT INTO activity_logs (user_id, action, description, ip_address, user_agent) 
                VALUES (?, ?, ?, ?, ?)";
        $db->query($sql, [
            $userId,
            $action,
            $description,
            getClientIP(),
            getUserAgent()
        ]);
    } catch (Exception $e) {
        error_log("Failed to log activity: " . $e->getMessage());
    }
}

function formatActivityAction($action) {
    $action = trim((string)$action);
    if ($action === '') {
        return 'Activity';
    }

    $normalized = strtolower($action);
    $knownLabels = [
        'login' => 'Login',
        'logout' => 'Logout',
        'register' => 'Register',
        'change_password' => 'Password Change',
    ];

    if (isset($knownLabels[$normalized])) {
        return $knownLabels[$normalized];
    }

    return ucwords(str_replace('_', ' ', $normalized));
}

function classifyActivityChangeType($action, $description = '') {
    $text = strtolower(trim((string)$action) . ' ' . trim((string)$description));

    if ($text === '') {
        return 'other';
    }

    if (preg_match('/\b(delete|deleted|remove|removed)\b/', $text)) {
        return 'delete';
    }

    if (preg_match('/\b(create|created|add|added|insert|inserted)\b/', $text)) {
        return 'add';
    }

    if (preg_match('/\b(update|updated|edit|edited|change|changed|toggle)\b/', $text)) {
        return 'update';
    }

    if (preg_match('/\b(status|approve|approved|reject|rejected|assign|assigned|release|released)\b/', $text)) {
        return 'status';
    }

    return 'other';
}

function getActivityTypeLabel($type) {
    $labels = [
        'add' => 'Add',
        'update' => 'Update',
        'delete' => 'Delete/Remove',
        'status' => 'Status Change',
        'other' => 'Other',
    ];

    return $labels[$type] ?? 'Other';
}

function getActivityTypeBadgeClass($type) {
    $classes = [
        'add' => 'bg-success-subtle text-success-emphasis border border-success-subtle',
        'update' => 'bg-primary-subtle text-primary-emphasis border border-primary-subtle',
        'delete' => 'bg-danger-subtle text-danger-emphasis border border-danger-subtle',
        'status' => 'bg-warning-subtle text-warning-emphasis border border-warning-subtle',
        'other' => 'bg-secondary-subtle text-secondary-emphasis border border-secondary-subtle',
    ];

    return $classes[$type] ?? $classes['other'];
}

function paginate($totalRecords, $currentPage = 1, $recordsPerPage = RECORDS_PER_PAGE) {
    $totalPages = ceil($totalRecords / $recordsPerPage);
    $currentPage = max(1, min($currentPage, $totalPages));
    $offset = ($currentPage - 1) * $recordsPerPage;
    
    return [
        'total_records' => $totalRecords,
        'total_pages' => $totalPages,
        'current_page' => $currentPage,
        'records_per_page' => $recordsPerPage,
        'offset' => $offset,
        'has_previous' => $currentPage > 1,
        'has_next' => $currentPage < $totalPages
    ];
}

function generateJWT($payload) {
    $header = json_encode(['typ' => 'JWT', 'alg' => JWT_ALGORITHM]);
    $payload['iat'] = time();
    $payload['exp'] = time() + JWT_EXPIRATION;
    $payload = json_encode($payload);
    
    $base64UrlHeader = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($header));
    $base64UrlPayload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($payload));
    
    $signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, JWT_SECRET_KEY, true);
    $base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
    
    return $base64UrlHeader . "." . $base64UrlPayload . "." . $base64UrlSignature;
}

function verifyJWT($token) {
    $tokenParts = explode('.', $token);
    if (count($tokenParts) !== 3) {
        return false;
    }
    
    list($base64UrlHeader, $base64UrlPayload, $base64UrlSignature) = $tokenParts;
    
    $signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, JWT_SECRET_KEY, true);
    $base64UrlSignatureCheck = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($signature));
    
    if ($base64UrlSignature !== $base64UrlSignatureCheck) {
        return false;
    }
    
    $payload = json_decode(base64_decode(str_replace(['-', '_'], ['+', '/'], $base64UrlPayload)), true);
    
    if (!isset($payload['exp']) || $payload['exp'] < time()) {
        return false;
    }
    
    return $payload;
}

function getAuthorizationHeader() {
    $headers = null;
    if (isset($_SERVER['Authorization'])) {
        $headers = trim($_SERVER["Authorization"]);
    } elseif (isset($_SERVER['HTTP_AUTHORIZATION'])) {
        $headers = trim($_SERVER["HTTP_AUTHORIZATION"]);
    } elseif (function_exists('apache_request_headers')) {
        $requestHeaders = apache_request_headers();
        $requestHeaders = array_combine(array_map('ucwords', array_keys($requestHeaders)), array_values($requestHeaders));
        if (isset($requestHeaders['Authorization'])) {
            $headers = trim($requestHeaders['Authorization']);
        }
    }
    return $headers;
}

function getBearerToken() {
    $headers = getAuthorizationHeader();
    if (!empty($headers)) {
        if (preg_match('/Bearer\s(\S+)/', $headers, $matches)) {
            return $matches[1];
        }
    }
    return null;
}


/**
 * Generate unique staff ID
 * @return string Staff ID in 5 random-digit format
 */
function generateStaffId() {
    $db = Database::getInstance();

    for ($attempt = 0; $attempt < 50; $attempt++) {
        $candidate = str_pad((string) random_int(0, 99999), 5, '0', STR_PAD_LEFT);
        $exists = $db->fetch(
            "SELECT id FROM staff WHERE staff_id = ? OR username = ? LIMIT 1",
            [$candidate, $candidate]
        );
        if (!$exists) {
            return $candidate;
        }
    }

    throw new RuntimeException('Unable to generate unique staff ID');
}

// Note: setMessage(), getMessage(), and hasMessage() functions 
// are already defined in includes/session.php

/**
 * Auto-cleanup old records (older than 1 year).
 * Runs at most once per day using a lock file.
 */
function runAutoCleanup() {
    $lockFile = sys_get_temp_dir() . '/autodok_cleanup_' . md5(__DIR__) . '.lock';
    
    // Only run once per day
    if (file_exists($lockFile) && (time() - filemtime($lockFile)) < 86400) {
        return;
    }
    
    @touch($lockFile);
    
    try {
        $db = Database::getInstance();
        $oneYearAgo = date('Y-m-d H:i:s', strtotime('-1 year'));
        
        // Delete job estimates older than 1 year
        $db->query("DELETE FROM job_estimates WHERE created_at < ?", [$oneYearAgo]);
        
        // Delete job orders older than 1 year (only completed/released/cancelled)
        $db->query("DELETE FROM job_orders WHERE created_at < ? AND status IN ('completed','released','cancelled')", [$oneYearAgo]);
        
        // Delete activity logs older than 1 year
        $db->query("DELETE FROM activity_logs WHERE created_at < ?", [$oneYearAgo]);
        
    } catch (Exception $e) {
        error_log("Auto-cleanup error: " . $e->getMessage());
    }
}
