<?php

defined('APP_ACCESS') or define('APP_ACCESS', true);

// Database Configuration
define('DB_HOST', '127.0.0.1');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'u141753080_tautodok');
define('DB_CHARSET', 'utf8mb4');

// Application Configuration
define('APP_NAME', 'Autodok Prime Auto Services');
define('APP_DESCRIPTION', 'Prime Automotive Care Services');
define('SHOP_BRANCH_NAME', 'u141753080_tautodok');
define('APP_VERSION', '1.0.0');

$basePathFs = realpath(dirname(__DIR__)) ?: dirname(__DIR__);
$configuredBasePath = trim((string)(getenv('APP_BASE_PATH') ?: ''), '/');

if ($configuredBasePath !== '') {
	$baseUrlPath = '/' . $configuredBasePath;
} else {
	$baseUrlPath = '';
	$docRoot = $_SERVER['DOCUMENT_ROOT'] ?? '';
	if ($docRoot !== '') {
		$docRootFs = realpath($docRoot) ?: $docRoot;
		$normalizedDocRoot = rtrim(str_replace('\\', '/', $docRootFs), '/');
		$normalizedBasePath = rtrim(str_replace('\\', '/', $basePathFs), '/');

		if ($normalizedDocRoot !== '' && strpos($normalizedBasePath, $normalizedDocRoot) === 0) {
			$relativePath = trim(substr($normalizedBasePath, strlen($normalizedDocRoot)), '/');
			$baseUrlPath = $relativePath === '' ? '' : ('/' . $relativePath);
		}
	}
}

define('APP_BASE_PATH', $baseUrlPath);

$configuredAppUrl = trim((string)(getenv('APP_URL') ?: ''));
if ($configuredAppUrl !== '') {
	define('APP_URL', rtrim($configuredAppUrl, '/'));
} else {
	$isHttps = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') || (($_SERVER['SERVER_PORT'] ?? '') == 443);
	$scheme = $isHttps ? 'https' : 'http';
	$host = $_SERVER['HTTP_HOST'] ?? 'localhost';
	define('APP_URL', rtrim($scheme . '://' . $host . APP_BASE_PATH, '/'));
}

if (!function_exists('getShopOptions')) {
	function getShopOptions() {
		return [
			'autodok_main' => [
				'name' => 'The Autodok',
				'db_name' => 'u141753080_tautodok',
				'db_user' => 'root',
				'db_pass' => '',
			],
			'autodok_prime' => [
				'name' => 'Autodok Prime Auto Services',
				'db_name' => 'u141753080_pautodok',
				'db_user' => 'root',
				'db_pass' => '',
			],
		];
	}
}

if (!function_exists('resolveShopOption')) {
	function resolveShopOption($shopKey) {
		$options = getShopOptions();
		$key = trim((string)$shopKey);
		if ($key !== '' && isset($options[$key])) {
			return ['key' => $key] + $options[$key];
		}

		foreach ($options as $candidateKey => $option) {
			if (($option['db_name'] ?? '') === DB_NAME) {
				return ['key' => $candidateKey] + $option;
			}
		}

		$firstKey = array_key_first($options);
		return ['key' => $firstKey] + $options[$firstKey];
	}
}

// Path Configuration
define('BASE_PATH', $basePathFs);
define('UPLOAD_PATH', BASE_PATH . '/uploads/');
define('UPLOAD_URL', APP_URL . '/uploads/');

// Security Configuration
define('SESSION_LIFETIME', 3600); 
define('CSRF_TOKEN_NAME', 'csrf_token');
define('JWT_SECRET_KEY', 'your-secret-key-change-this-in-production-2026');
define('JWT_ALGORITHM', 'HS256');
define('JWT_EXPIRATION', 86400); 

// Password Configuration
define('PASSWORD_COST', 12);

// Pagination
define('RECORDS_PER_PAGE', 10);

// Date and Time
define('TIMEZONE', 'Asia/Manila');
date_default_timezone_set(TIMEZONE);
$timezoneNow = new DateTime('now', new DateTimeZone(TIMEZONE));
define('DB_TIMEZONE_OFFSET', $timezoneNow->format('P'));
define('DATE_FORMAT', 'Y-m-d');
define('DATETIME_FORMAT', 'Y-m-d H:i:s');
define('DISPLAY_DATE_FORMAT', 'F d, Y');
define('DISPLAY_DATETIME_FORMAT', 'F d, Y h:i A');

// Error Reporting (Set to 0 in production)
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Session Configuration
ini_set('session.cookie_httponly', 1);
ini_set('session.use_only_cookies', 1);
ini_set('session.cookie_secure', 0); 
ini_set('session.cookie_samesite', 'Strict');

// File Upload Configuration
define('MAX_FILE_SIZE', 5242880); 
define('ALLOWED_FILE_TYPES', ['jpg', 'jpeg', 'png', 'pdf', 'doc', 'docx']);

// API Configuration
define('API_RATE_LIMIT', 100); 
define('API_VERSION', 'v1');

// Email Configuration (for future use)
define('SMTP_HOST', 'smtp.gmail.com');
define('SMTP_PORT', 587);
define('SMTP_USER', 'your-email@gmail.com');
define('SMTP_PASS', 'your-password');
define('SMTP_FROM', 'noreply@autodok.com');
define('SMTP_FROM_NAME', 'Autodok Prime Auto Services');

// Application Status
define('MAINTENANCE_MODE', false);
