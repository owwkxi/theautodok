<?php
define('APP_ACCESS', true);
require_once __DIR__ . '/../../includes/config.php';
require_once __DIR__ . '/../../includes/Database.php';
require_once __DIR__ . '/../../includes/functions.php';
require_once __DIR__ . '/../../includes/session.php';
require_once __DIR__ . '/../../includes/security.php';
require_once __DIR__ . '/../../models/Report.php';

requireLogin();
requireAnyRole(['admin', 'cashier']);

$canManageExpenses = hasAnyRole(['admin', 'system_administrator']);

$pageTitle = 'Reports';

// Date range filter (default to today)
$dateFrom = $_GET['from'] ?? date('Y-m-d');
$dateTo = $_GET['to'] ?? date('Y-m-d');

if (!strtotime($dateFrom)) {
    $dateFrom = date('Y-m-d');
}
if (!strtotime($dateTo)) {
    $dateTo = date('Y-m-d');
}
if ($dateFrom > $dateTo) {
    $dateFrom = date('Y-m-d');
    $dateTo = date('Y-m-d');
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && ($_POST['action'] ?? '') === 'delete_expense') {
    try {
        validateCSRF();

        if (!$canManageExpenses) {
            throw new Exception('Only admin/system administrator can delete expenses.');
        }

        $expenseId = trim((string)($_POST['expense_id'] ?? ''));
        if ($expenseId === '') {
            throw new Exception('Expense ID is required.');
        }

        $allExpenses = getReportExpenses();
        $updatedExpenses = array_values(array_filter($allExpenses, function ($row) use ($expenseId) {
            return (string)($row['id'] ?? '') !== $expenseId;
        }));

        if (count($updatedExpenses) === count($allExpenses)) {
            throw new Exception('Expense entry not found.');
        }

        if (!saveReportExpenses($updatedExpenses)) {
            throw new Exception('Failed to delete expense entry.');
        }

        $removedExpense = null;
        foreach ($allExpenses as $row) {
            if ((string)($row['id'] ?? '') === $expenseId) {
                $removedExpense = $row;
                break;
            }
        }

        $actorName = sanitize($_SESSION['full_name'] ?? $_SESSION['username'] ?? 'Staff');
        $removedAmount = (float)($removedExpense['amount'] ?? 0);
        $removedDate = (string)($removedExpense['expense_date'] ?? date('Y-m-d'));
        notifyRoles(
            'system',
            'Expense Deleted',
            buildNotificationMessageTemplate(
                $actorName,
                'deleted',
                'expense entry',
                'Amount: ₱' . number_format($removedAmount, 2) . ', Date: ' . date('M d, Y', strtotime($removedDate))
            ),
            ['admin', 'cashier'],
            [
                'reference_type' => 'report_expense',
            ]
        );
        logActivity((int)($_SESSION['user_id'] ?? 0), 'delete_expense', 'Deleted expense entry: ₱' . number_format($removedAmount, 2) . ' on ' . date('M d, Y', strtotime($removedDate)));

        setMessage('Expense entry deleted successfully.', 'success');
    } catch (Exception $e) {
        setMessage('Error: ' . $e->getMessage(), 'error');
    }

    $redirectFrom = $_POST['from'] ?? $dateFrom;
    $redirectTo = $_POST['to'] ?? $dateTo;
    redirect(routeUrl('reports', ['from' => $redirectFrom, 'to' => $redirectTo]));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && ($_POST['action'] ?? '') === 'add_expense') {
    try {
        validateCSRF();

        $expenseDate = $_POST['expense_date'] ?? date('Y-m-d');
        $expenseAmount = (float)($_POST['expense_amount'] ?? 0);
        $expenseNotes = trim((string)($_POST['expense_notes'] ?? ''));

        if (!strtotime($expenseDate)) {
            throw new Exception('Please provide a valid expense date.');
        }
        if ($expenseAmount <= 0) {
            throw new Exception('Expense amount must be greater than zero.');
        }

        $added = addReportExpense([
            'expense_date' => date('Y-m-d', strtotime($expenseDate)),
            'category' => 'General',
            'description' => $expenseNotes,
            'amount' => $expenseAmount,
            'created_by' => $_SESSION['full_name'] ?? $_SESSION['username'] ?? 'System'
        ]);

        if (!$added) {
            throw new Exception('Failed to save expense entry.');
        }

        $actorName = sanitize($_SESSION['full_name'] ?? $_SESSION['username'] ?? 'Staff');
        notifyRoles(
            'system',
            'Expense Added',
            buildNotificationMessageTemplate(
                $actorName,
                'added',
                'an expense',
                'Amount: ₱' . number_format($expenseAmount, 2) . ', Date: ' . date('M d, Y', strtotime($expenseDate))
            ),
            ['admin', 'cashier'],
            [
                'reference_type' => 'report_expense',
            ]
        );
        logActivity((int)($_SESSION['user_id'] ?? 0), 'add_expense', 'Added expense entry: ₱' . number_format($expenseAmount, 2) . ' on ' . date('M d, Y', strtotime($expenseDate)));

        setMessage('Expense entry added successfully.', 'success');
    } catch (Exception $e) {
        setMessage('Error: ' . $e->getMessage(), 'error');
    }

    $redirectFrom = $_POST['from'] ?? $dateFrom;
    $redirectTo = $_POST['to'] ?? $dateTo;
    redirect(routeUrl('reports', ['from' => $redirectFrom, 'to' => $redirectTo]));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && ($_POST['action'] ?? '') === 'add_income') {
    try {
        validateCSRF();

        $incomeDate = $_POST['income_date'] ?? date('Y-m-d');
        $incomeAmount = (float)($_POST['income_amount'] ?? 0);
        $incomeNotes = trim((string)($_POST['income_notes'] ?? ''));

        if (!strtotime($incomeDate)) {
            throw new Exception('Please provide a valid income date.');
        }
        if ($incomeAmount <= 0) {
            throw new Exception('Income amount must be greater than zero.');
        }

        $added = addReportManualIncome([
            'income_date' => date('Y-m-d', strtotime($incomeDate)),
            'description' => $incomeNotes,
            'amount' => $incomeAmount,
            'created_by' => $_SESSION['full_name'] ?? $_SESSION['username'] ?? 'System'
        ]);

        if (!$added) {
            throw new Exception('Failed to save income entry.');
        }

        logActivity((int)($_SESSION['user_id'] ?? 0), 'add_manual_income', 'Added manual income: ₱' . number_format($incomeAmount, 2) . ' on ' . date('M d, Y', strtotime($incomeDate)));
        setMessage('Income entry added successfully.', 'success');
    } catch (Exception $e) {
        setMessage('Error: ' . $e->getMessage(), 'error');
    }

    $redirectFrom = $_POST['from'] ?? $dateFrom;
    $redirectTo = $_POST['to'] ?? $dateTo;
    redirect(routeUrl('reports', ['from' => $redirectFrom, 'to' => $redirectTo]));
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && ($_POST['action'] ?? '') === 'delete_income') {
    try {
        validateCSRF();

        if (!$canManageExpenses) {
            throw new Exception('Only admin can delete income entries.');
        }

        $incomeId = trim((string)($_POST['income_id'] ?? ''));
        if ($incomeId === '') {
            throw new Exception('Income ID is required.');
        }

        $allIncome = getReportManualIncome();
        $updatedIncome = array_values(array_filter($allIncome, function ($row) use ($incomeId) {
            return (string)($row['id'] ?? '') !== $incomeId;
        }));

        if (count($updatedIncome) === count($allIncome)) {
            throw new Exception('Income entry not found.');
        }

        if (!saveReportManualIncome($updatedIncome)) {
            throw new Exception('Failed to delete income entry.');
        }

        logActivity((int)($_SESSION['user_id'] ?? 0), 'delete_manual_income', 'Deleted manual income entry');
        setMessage('Income entry deleted successfully.', 'success');
    } catch (Exception $e) {
        setMessage('Error: ' . $e->getMessage(), 'error');
    }

    $redirectFrom = $_POST['from'] ?? $dateFrom;
    $redirectTo = $_POST['to'] ?? $dateTo;
    redirect(routeUrl('reports', ['from' => $redirectFrom, 'to' => $redirectTo]));
}

$allExpenses = getReportExpenses();
$filteredExpenses = array_values(array_filter($allExpenses, function ($row) use ($dateFrom, $dateTo) {
    $expenseDate = $row['expense_date'] ?? '';
    return $expenseDate >= $dateFrom && $expenseDate <= $dateTo;
}));

usort($filteredExpenses, function ($a, $b) {
    $aDate = ($a['expense_date'] ?? '') . ' ' . ($a['created_at'] ?? '');
    $bDate = ($b['expense_date'] ?? '') . ' ' . ($b['created_at'] ?? '');
    return strcmp($bDate, $aDate);
});

$allManualIncome = getReportManualIncome();
$filteredManualIncome = array_values(array_filter($allManualIncome, function ($row) use ($dateFrom, $dateTo) {
    $incomeDate = $row['income_date'] ?? '';
    return $incomeDate >= $dateFrom && $incomeDate <= $dateTo;
}));

usort($filteredManualIncome, function ($a, $b) {
    $aDate = ($a['income_date'] ?? '') . ' ' . ($a['created_at'] ?? '');
    $bDate = ($b['income_date'] ?? '') . ' ' . ($b['created_at'] ?? '');
    return strcmp($bDate, $aDate);
});

$reportModel = new Report();
$activeShop = function_exists('getActiveShopOption') ? getActiveShopOption() : ['name' => APP_NAME];
$activeShopName = $activeShop['name'] ?? APP_NAME;
$incomeReport = $reportModel->getIncomeReport($dateFrom, $dateTo);
$productCostExpenses = $reportModel->getPaidProductCostExpenses($dateFrom, $dateTo);
$serviceStats = $reportModel->getServiceTypeStats($dateFrom, $dateTo);
$paymentMethods = $reportModel->getPaymentMethodStats($dateFrom, $dateTo);
$paymentSummary = $reportModel->getPaymentStatusSummary($dateFrom, $dateTo);
$statusSummary = $reportModel->getJobOrderStatusSummary($dateFrom, $dateTo);
$topCustomers = $reportModel->getTopCustomers(10, $dateFrom, $dateTo);
$recentActivity = $reportModel->getRecentActivity(0, $dateFrom, $dateTo);
$techPerformance = $reportModel->getTechnicianPerformance($dateFrom, $dateTo);

$totalOrders = array_sum(array_column($incomeReport, 'job_orders_count'));
$totalIncome = array_sum(array_column($incomeReport, 'total_income'));
$paidIncome = array_sum(array_column($incomeReport, 'paid_income')); // JO payments only; outside income is tracked separately
$pendingIncome = array_sum(array_column($incomeReport, 'pending_income'));
$totalManualIncome = 0;
foreach ($filteredManualIncome as $incItem) {
    $totalManualIncome += (float)($incItem['amount'] ?? 0);
}
$totalExpenses = 0;
foreach ($filteredExpenses as $expenseItem) {
    $totalExpenses += (float)($expenseItem['amount'] ?? 0);
}
foreach ($productCostExpenses as $productCostExpense) {
    $totalExpenses += (float)($productCostExpense['amount'] ?? 0);
}
$netIncome = ($paidIncome + $totalManualIncome) - $totalExpenses;

$netIncomeTransactions = [];
$paymentLedger = Database::getInstance()->fetchAll(
    "SELECT p.payment_date AS transaction_at, p.amount, jo.job_order_number, c.full_name AS customer_name
     FROM job_order_payments p
     INNER JOIN job_orders jo ON jo.id = p.job_order_id
     LEFT JOIN customers c ON c.id = jo.customer_id
     WHERE jo.status != 'cancelled' AND DATE(p.payment_date) BETWEEN ? AND ?
     ORDER BY p.payment_date DESC",
    [$dateFrom, $dateTo]
);

foreach ($paymentLedger as $paymentRow) {
    $paymentAmount = (float)($paymentRow['amount'] ?? 0);
    if ($paymentAmount <= 0) {
        continue;
    }

    $transactionAt = (string)($paymentRow['transaction_at'] ?? '');
    $netIncomeTransactions[] = [
        'timestamp' => $transactionAt,
        'date' => $transactionAt !== '' ? date('Y-m-d h:i A', strtotime($transactionAt)) : date('Y-m-d h:i A', strtotime($dateFrom)),
        'type' => 'JO Paid',
        'reference' => (string)($paymentRow['job_order_number'] ?? 'JO'),
        'description' => 'Job Order payment · ' . (($paymentRow['customer_name'] ?? 'Customer') ?: 'Customer'),
        'amount' => $paymentAmount,
        'direction' => 'in'
    ];
}

foreach ($filteredManualIncome as $manualIncomeRow) {
    $manualAmount = (float)($manualIncomeRow['amount'] ?? 0);
    if ($manualAmount <= 0) {
        continue;
    }

    $transactionAt = (string)($manualIncomeRow['created_at'] ?? ($manualIncomeRow['income_date'] ?? date('Y-m-d H:i:s')));
    $netIncomeTransactions[] = [
        'timestamp' => $transactionAt,
        'date' => date('Y-m-d h:i A', strtotime($transactionAt)),
        'type' => 'Income',
        'reference' => 'Manual Income',
        'description' => (string)($manualIncomeRow['description'] ?? 'Manual income'),
        'amount' => $manualAmount,
        'direction' => 'in'
    ];
}

foreach ($filteredExpenses as $expenseRow) {
    $expenseAmount = (float)($expenseRow['amount'] ?? 0);
    if ($expenseAmount <= 0) {
        continue;
    }

    $transactionAt = (string)($expenseRow['created_at'] ?? ($expenseRow['expense_date'] ?? date('Y-m-d H:i:s')));
    $netIncomeTransactions[] = [
        'timestamp' => $transactionAt,
        'date' => date('Y-m-d h:i A', strtotime($transactionAt)),
        'type' => 'Expense',
        'reference' => 'Expense',
        'description' => (string)($expenseRow['description'] ?? 'Expense'),
        'amount' => $expenseAmount,
        'direction' => 'out'
    ];
}
foreach ($productCostExpenses as $productCostExpense) {
    $productCostAmount = (float)($productCostExpense['amount'] ?? 0);
    if ($productCostAmount <= 0) continue;
    $productCostAt = (string)($productCostExpense['expense_at'] ?? ($productCostExpense['expense_date'] ?? date('Y-m-d H:i:s')));
    $netIncomeTransactions[] = ['timestamp' => $productCostAt, 'date' => date('Y-m-d h:i A', strtotime($productCostAt)), 'type' => 'Product Cost', 'reference' => (string)($productCostExpense['job_order_number'] ?? 'JO'), 'description' => 'Parts cost for paid JO - ' . (($productCostExpense['customer_name'] ?? 'Customer') ?: 'Customer'), 'amount' => $productCostAmount, 'direction' => 'out'];
}


usort($netIncomeTransactions, function ($a, $b) {
    $aTime = strtotime($a['timestamp'] ?: $a['date'] ?: '1970-01-01 00:00:00');
    $bTime = strtotime($b['timestamp'] ?: $b['date'] ?: '1970-01-01 00:00:00');
    return $bTime <=> $aTime;
});

if (($_GET['export'] ?? '') === 'excel') {
    $db = Database::getInstance();
    $jobOrderDetails = $db->fetchAll(
        "SELECT
            jo.job_order_number,
            jo.created_at,
            jo.status,
            jo.payment_status,
            jo.total_amount,
            jo.partial_amount,
            c.full_name AS customer_name,
            c.phone AS customer_phone,
            v.brand,
            v.model,
            v.plate_number
         FROM job_orders jo
         LEFT JOIN customers c ON jo.customer_id = c.id
         LEFT JOIN vehicles v ON jo.vehicle_id = v.id
         WHERE jo.status != 'cancelled' AND DATE(jo.created_at) BETWEEN ? AND ?
         ORDER BY jo.created_at DESC",
        [$dateFrom, $dateTo]
    );

    $safeFrom = preg_replace('/[^0-9\-]/', '', $dateFrom);
    $safeTo = preg_replace('/[^0-9\-]/', '', $dateTo);
    $filename = "autodok_reports_{$safeFrom}_to_{$safeTo}.xls";

    header('Content-Type: application/vnd.ms-excel; charset=UTF-8');
    header('Content-Disposition: attachment; filename="' . $filename . '"');
    header('Pragma: no-cache');
    header('Expires: 0');

    echo "<html><head><meta charset='UTF-8'><style>";
    echo "body{font-family:Calibri,Arial,sans-serif;font-size:12px;color:#111;}";
    echo ".report-title{font-size:22px;font-weight:700;margin:0 0 6px 0;color:#1f2937;}";
    echo ".report-sub{font-size:12px;color:#4b5563;margin:0 0 12px 0;}";
    echo ".meta{margin-bottom:10px;}";
    echo ".meta td{padding:4px 8px;border:none;}";
    echo ".note{background:#f8fafc;border:1px solid #dbe3ee;padding:8px 10px;margin:8px 0 14px 0;color:#334155;}";
    echo ".section{font-size:15px;font-weight:700;color:#1f2937;margin:14px 0 6px 0;}";
    echo "table{border-collapse:collapse;width:100%;margin-bottom:14px;}";
    echo "th,td{border:1px solid #d1d5db;padding:6px 8px;vertical-align:middle;}";
    echo "th{background:#eef2f7;color:#111827;font-weight:700;text-align:left;white-space:nowrap;}";
    echo "tr:nth-child(even) td{background:#fafafa;}";
    echo ".text-right{text-align:right;}";
    echo ".muted{color:#6b7280;}";
    echo "</style></head><body>";

    echo "<div class='report-title'>" . escape($activeShopName) . " Reports</div>";
    echo "<div class='report-sub'>Exported financial and operational report</div>";
    echo "<table class='meta'>";
    echo "<tr><td><strong>Period:</strong></td><td>" . escape($dateFrom) . " to " . escape($dateTo) . "</td></tr>";
    echo "<tr><td><strong>Generated At:</strong></td><td>" . escape(date('Y-m-d h:i A')) . "</td></tr>";
    echo "<tr><td><strong>Generated By:</strong></td><td>" . escape($_SESSION['full_name'] ?? $_SESSION['username'] ?? 'System') . "</td></tr>";
    echo "</table>";
    echo "<div class='note'><strong>How totals are computed:</strong> <span class='muted'>Paid includes fully paid orders plus partial amounts from partially paid orders. Pending includes full pending orders plus remaining balances from partially paid orders.</span></div>";

    echo "<div class='section'>1. Executive Summary</div>";
    echo "<table>";
    echo "<tr><th>Total Job Orders</th><th>Total Income (PHP)</th><th>Paid Income (PHP)</th><th>Expenses (PHP)</th><th>Net Income (PHP)</th><th>Pending Income (PHP)</th></tr>";
    echo "<tr>";
    echo "<td class='text-right'>" . number_format($totalOrders) . "</td>";
    echo "<td class='text-right'>" . number_format((float)$totalIncome, 2) . "</td>";
    echo "<td class='text-right'>" . number_format((float)$paidIncome, 2) . "</td>";
    echo "<td class='text-right'>" . number_format((float)$totalExpenses, 2) . "</td>";
    echo "<td class='text-right'>" . number_format((float)$netIncome, 2) . "</td>";
    echo "<td class='text-right'>" . number_format((float)$pendingIncome, 2) . "</td>";
    echo "</tr></table>";

    echo "<div class='section'>2. Expenses Log</div>";
    echo "<table><tr><th>Date</th><th>Description</th><th>Entered By</th><th class='text-right'>Amount (PHP)</th></tr>";
    if (empty($filteredExpenses)) {
        echo "<tr><td colspan='4'>No expenses recorded for this range</td></tr>";
    } else {
        foreach ($filteredExpenses as $expenseRow) {
            echo "<tr>";
            echo "<td>" . escape($expenseRow['expense_date'] ?? '—') . "</td>";
            echo "<td>" . escape($expenseRow['description'] ?? '—') . "</td>";
            echo "<td>" . escape($expenseRow['created_by'] ?? 'System') . "</td>";
            echo "<td class='text-right'>" . number_format((float)($expenseRow['amount'] ?? 0), 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>3. Job Orders Details</div>";
    echo "<table><tr>";
    echo "<th>JO #</th><th>Date</th><th>Customer</th><th>Phone</th><th>Vehicle</th><th>Plate</th><th>Status</th><th>Payment Status</th><th class='text-right'>Total (PHP)</th><th class='text-right'>Paid (PHP)</th><th class='text-right'>Pending (PHP)</th>";
    echo "</tr>";
    if (empty($jobOrderDetails)) {
        echo "<tr><td colspan='11'>No job orders for this range</td></tr>";
    } else {
        foreach ($jobOrderDetails as $row) {
            $rowTotal = (float)($row['total_amount'] ?? 0);
            $rowPartial = (float)($row['partial_amount'] ?? 0);
            $rowPayment = (string)($row['payment_status'] ?? 'pending');
            $rowPaid = 0.0;
            $rowPending = 0.0;

            if ($rowPayment === 'paid') {
                $rowPaid = $rowTotal;
            } elseif ($rowPayment === 'partial') {
                $rowPaid = max(0, min($rowPartial, $rowTotal));
                $rowPending = max(0, $rowTotal - $rowPaid);
            } else {
                $rowPending = $rowTotal;
            }

            echo "<tr>";
            echo "<td>" . escape($row['job_order_number']) . "</td>";
            echo "<td>" . escape(date('Y-m-d H:i', strtotime($row['created_at']))) . "</td>";
            echo "<td>" . escape($row['customer_name'] ?? 'Unknown') . "</td>";
            echo "<td>" . escape($row['customer_phone'] ?? '—') . "</td>";
            echo "<td>" . escape(trim(($row['brand'] ?? '') . ' ' . ($row['model'] ?? ''))) . "</td>";
            echo "<td>" . escape($row['plate_number'] ?? '—') . "</td>";
            echo "<td>" . escape(ucwords(str_replace('_', ' ', $row['status'] ?? 'pending'))) . "</td>";
            echo "<td>" . escape(ucwords(str_replace('_', ' ', $rowPayment))) . "</td>";
            echo "<td class='text-right'>" . number_format($rowTotal, 2) . "</td>";
            echo "<td class='text-right'>" . number_format($rowPaid, 2) . "</td>";
            echo "<td class='text-right'>" . number_format($rowPending, 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>4. Income Trend</div>";
    echo "<table><tr><th>Date</th><th class='text-right'>Job Orders</th><th class='text-right'>Total Income (PHP)</th><th class='text-right'>Paid Income (PHP)</th><th class='text-right'>Pending Income (PHP)</th></tr>";
    if (empty($incomeReport)) {
        echo "<tr><td colspan='5'>No data for this range</td></tr>";
    } else {
        foreach ($incomeReport as $row) {
            echo "<tr>";
            echo "<td>" . escape($row['date']) . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['job_orders_count']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_income'], 2) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['paid_income'], 2) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['pending_income'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>5. Service Type Revenue</div>";
    echo "<table><tr><th>Service Type</th><th class='text-right'>Orders</th><th class='text-right'>Revenue (PHP)</th></tr>";
    if (empty($serviceStats)) {
        echo "<tr><td colspan='3'>No data for this range</td></tr>";
    } else {
        foreach ($serviceStats as $row) {
            echo "<tr>";
            echo "<td>" . escape($row['service_name'] ?? $row['service_type'] ?? 'Unknown') . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['count']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_revenue'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>6. Payment Method Breakdown</div>";
    echo "<table><tr><th>Method</th><th class='text-right'>Orders</th><th class='text-right'>Amount (PHP)</th></tr>";
    if (empty($paymentMethods)) {
        echo "<tr><td colspan='3'>No payment data for this range</td></tr>";
    } else {
        foreach ($paymentMethods as $row) {
            echo "<tr>";
            echo "<td>" . escape($row['payment_method'] ?? 'Unknown') . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['count']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_amount'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>7. Job Order Status Summary</div>";
    echo "<table><tr><th>Status</th><th class='text-right'>Count</th><th class='text-right'>Total (PHP)</th></tr>";
    if (empty($statusSummary)) {
        echo "<tr><td colspan='3'>No status summary available</td></tr>";
    } else {
        foreach ($statusSummary as $row) {
            echo "<tr>";
            echo "<td>" . escape(ucwords(str_replace('_', ' ', $row['status']))) . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['count']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_amount'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>8. Payment Status Summary</div>";
    echo "<table><tr><th>Payment Status</th><th class='text-right'>Orders</th><th class='text-right'>Total (PHP)</th></tr>";
    if (empty($paymentSummary)) {
        echo "<tr><td colspan='3'>No payment summary available</td></tr>";
    } else {
        foreach ($paymentSummary as $row) {
            echo "<tr>";
            echo "<td>" . escape(ucwords(str_replace('_', ' ', $row['payment_status']))) . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['count']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_amount'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>9. Top Customers</div>";
    echo "<table><tr><th>Customer</th><th>Phone</th><th class='text-right'>Visits</th><th class='text-right'>Spent (PHP)</th></tr>";
    if (empty($topCustomers)) {
        echo "<tr><td colspan='4'>No customer activity yet</td></tr>";
    } else {
        foreach ($topCustomers as $row) {
            echo "<tr>";
            echo "<td>" . escape($row['customer_name']) . "</td>";
            echo "<td>" . escape($row['customer_phone']) . "</td>";
            echo "<td class='text-right'>" . number_format((int)$row['total_visits']) . "</td>";
            echo "<td class='text-right'>" . number_format((float)$row['total_spent'], 2) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "<div class='section'>10. Recent Activity</div>";
    echo "<table><tr><th>Action</th><th>Description</th><th>User</th><th>Date</th></tr>";
    if (empty($recentActivity)) {
        echo "<tr><td colspan='4'>No recent activity found</td></tr>";
    } else {
        foreach ($recentActivity as $activity) {
            echo "<tr>";
            echo "<td>" . escape($activity['action']) . "</td>";
            echo "<td>" . escape($activity['description']) . "</td>";
            echo "<td>" . escape($activity['username'] ?? 'System') . "</td>";
            echo "<td>" . escape(date('F d, Y h:i A', strtotime($activity['created_at']))) . "</td>";
            echo "</tr>";
        }
    }
    echo "</table>";

    echo "</body></html>";
    exit;
}

include __DIR__ . '/../partials/header.php';
?>

<style>
.report-table-wrap {
    overflow-x: auto;
    overflow-y: visible;
    -webkit-overflow-scrolling: touch;
    scrollbar-width: thin;
    -ms-overflow-style: auto;
}

.report-table-wrap::-webkit-scrollbar {
    width: 8px;
    height: 8px;
}

.report-table-wrap::-webkit-scrollbar-thumb {
    background: rgba(15, 23, 42, 0.35);
    border-radius: 10px;
}

.report-scroll-panel {
    max-height: 260px;
    overflow-y: auto;
    overflow-x: auto;
    scrollbar-width: thin;
    -ms-overflow-style: auto;
    -webkit-overflow-scrolling: touch;
}

.report-scroll-panel::-webkit-scrollbar {
    width: 8px;
    height: 8px;
}

.report-scroll-panel::-webkit-scrollbar-thumb {
    background: rgba(15, 23, 42, 0.35);
    border-radius: 10px;
}

.report-table {
    margin-bottom: 0;
    min-width: 420px;
}

.report-table th,
.report-table td {
    padding: 7px 9px;
    vertical-align: middle;
}

.report-table th {
    white-space: nowrap;
}

.report-table td {
    white-space: normal;
}

.report-table th.text-end,
.report-table td.text-end {
    white-space: nowrap;
    min-width: 88px;
}

@media (max-width: 768px) {
    .report-table {
        min-width: 400px;
    }

    .report-table th,
    .report-table td {
        font-size: 11px;
        padding: 7px 8px;
    }
}
</style>

<div class="d-flex justify-content-between align-items-center mb-4">
    <div>
        <h4 class="mb-0">Reports</h4>
        <p class="text-muted small mb-0">View business performance, payment status, and service statistics.</p>
    </div>
    <form class="row gx-2 gy-2 align-items-center" method="GET" action="">
        <div class="col-auto">
            <input type="date" class="form-control" name="from" value="<?php echo escape($dateFrom); ?>">
        </div>
        <div class="col-auto">
            <input type="date" class="form-control" name="to" value="<?php echo escape($dateTo); ?>">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-primary">Apply</button>
        </div>
        <div class="col-auto">
            <button type="submit" name="export" value="excel" class="btn btn-success">Export Excel</button>
        </div>
    </form>
</div>

<div class="row g-4 mb-4">
    <div class="col-lg-4 col-md-12">
        <div class="card h-100">
            <div class="card-body">
                <p class="text-muted mb-1 small">Paid / Pending</p>
                <h4 class="mb-0"><?php echo number_format($paidIncome, 2); ?>/<?php echo number_format($pendingIncome, 2); ?></h4>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-12">
        <div class="card h-100">
            <div class="card-body">
                <p class="text-muted mb-1 small">(Outside) Income / Expenses</p>
                <h4 class="mb-0"><span class="text-success">₱<?php echo number_format($totalManualIncome, 2); ?></span> / <span class="text-danger">₱<?php echo number_format($totalExpenses, 2); ?></span></h4>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-12">
        <div class="card h-100 border-secondary net-income-card" data-bs-toggle="modal" data-bs-target="#netIncomeTransactionsModal" role="button" aria-label="View net income transactions">
            <div class="card-body position-relative">
                <div>
                    <p class="text-dark mb-1 small">Net Income</p>
                    <h3 class="mb-0 text-dark">₱ <?php echo number_format($netIncome, 2); ?></h3>
                </div>
                <small class="text-dark">Period: <?php echo escape($dateFrom); ?> — <?php echo escape($dateTo); ?> | JO: <?php echo number_format($totalOrders); ?></small>
            </div>
        </div>
    </div>
</div>

<style>
.net-income-card {
    background: #d9d9d9;
    cursor: pointer;
    transition: background 0.2s ease, box-shadow 0.2s ease, transform 0.2s ease;
}

.net-income-card:hover,
.net-income-card:focus,
.net-income-card:active {
    background: #1d1d1d;
    box-shadow: 0 0.5rem 1rem rgba(17, 24, 39, 0.15);
    transform: translateY(-1px);
}

.net-income-card:hover .card-body p,
.net-income-card:hover .card-body small,
.net-income-card:hover .card-body h3,
.net-income-card:focus .card-body p,
.net-income-card:focus .card-body small,
.net-income-card:focus .card-body h3,
.net-income-card:active .card-body p,
.net-income-card:active .card-body small,
.net-income-card:active .card-body h3 {
    color: #fff !important;
}

.expense-title {
    color: #dc3545 !important;
}
</style>

<div class="modal fade" id="netIncomeTransactionsModal" tabindex="-1" aria-labelledby="netIncomeTransactionsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="netIncomeTransactionsModalLabel">Net Income Transactions</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <?php if (empty($netIncomeTransactions)): ?>
                    <p class="text-muted mb-0 text-center py-3">No linked transactions for this period.</p>
                <?php else: ?>
                    <div class="table-responsive">
                        <table class="table table-sm align-middle mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th>Date</th>
                                    <th>Type</th>
                                    <th>Reference</th>
                                    <th>Description</th>
                                    <th class="text-end">Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($netIncomeTransactions as $tx): ?>
                                    <tr>
                                        <td><?php echo escape($tx['date']); ?></td>
                                        <td>
                                            <?php if ($tx['type'] === 'Expense' || $tx['type'] === 'Product Cost'): ?>
                                                <span class="badge bg-danger-subtle text-danger"><?php echo $tx['type'] === 'Product Cost' ? 'Product Cost' : 'Expense'; ?></span>
                                            <?php elseif ($tx['type'] === 'Income'): ?>
                                                <span class="badge bg-success-subtle text-success">Income</span>
                                            <?php else: ?>
                                                <span class="badge bg-primary-subtle text-primary">JO Paid</span>
                                            <?php endif; ?>
                                        </td>
                                        <td><?php echo escape($tx['reference']); ?></td>
                                        <td><?php echo escape($tx['description']); ?></td>
                                        <td class="text-end fw-bold <?php echo $tx['direction'] === 'out' ? 'text-danger' : 'text-success'; ?>">
                                            <?php echo $tx['direction'] === 'out' ? '- ' : '+ '; ?>₱ <?php echo number_format((float)$tx['amount'], 2); ?>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                <?php endif; ?>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="card mb-4">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h5 class="card-title mb-0">Add Income</h5>
                <p class="text-muted small mb-0">Manually record additional income (outside of job orders).</p>
            </div>
        </div>
        <form method="POST" class="row g-2 align-items-end">
            <?php echo csrfField(); ?>
            <input type="hidden" name="action" value="add_income">
            <input type="hidden" name="from" value="<?php echo escape($dateFrom); ?>">
            <input type="hidden" name="to" value="<?php echo escape($dateTo); ?>">
            <div class="col-lg-2 col-md-4">
                <label class="form-label">Date</label>
                <input type="date" class="form-control" name="income_date" value="<?php echo escape($dateTo); ?>" required>
            </div>
            <div class="col-lg-2 col-md-4">
                <label class="form-label">Amount</label>
                <input type="number" class="form-control" name="income_amount" min="0.01" step="0.01" required>
            </div>
            <div class="col-lg-6 col-md-8">
                <label class="form-label">Description</label>
                <input type="text" class="form-control" name="income_notes" maxlength="180">
            </div>
            <div class="col-lg-2 col-md-4">
                <button type="submit" class="btn btn-success w-100">Add Income</button>
            </div>
        </form>
    </div>
</div>

<?php if (!empty($filteredManualIncome)): ?>
<div class="card mb-4">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h5 class="card-title mb-0">Manual Income Log</h5>
                <p class="text-muted small mb-0">Manually added income entries for the selected period.</p>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-sm align-middle mb-0">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Description</th>
                        <th>Entered By</th>
                        <th class="text-end">Amount</th>
                        <?php if ($canManageExpenses): ?>
                            <th class="text-end">Action</th>
                        <?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($filteredManualIncome as $incRow): ?>
                        <tr>
                            <td><?php echo escape($incRow['income_date'] ?? '—'); ?></td>
                            <td><?php echo escape($incRow['description'] ?? '—'); ?></td>
                            <td><?php echo escape($incRow['created_by'] ?? 'System'); ?></td>
                            <td class="text-end text-success fw-bold">₱ <?php echo number_format((float)($incRow['amount'] ?? 0), 2); ?></td>
                            <?php if ($canManageExpenses): ?>
                                <td class="text-end">
                                    <form method="POST" class="d-inline" onsubmit="return confirmIncomeDelete(this);">
                                        <?php echo csrfField(); ?>
                                        <input type="hidden" name="action" value="delete_income">
                                        <input type="hidden" name="from" value="<?php echo escape($dateFrom); ?>">
                                        <input type="hidden" name="to" value="<?php echo escape($dateTo); ?>">
                                        <input type="hidden" name="income_id" value="<?php echo escape($incRow['id'] ?? ''); ?>">
                                        <button type="submit" class="btn btn-sm btn-outline-danger">Delete</button>
                                    </form>
                                </td>
                            <?php endif; ?>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
                <tfoot>
                    <tr class="table-light">
                        <td colspan="3" class="fw-bold">Total Manual Income</td>
                        <td class="text-end fw-bold text-success">₱ <?php echo number_format($totalManualIncome, 2); ?></td>
                        <?php if ($canManageExpenses): ?><td></td><?php endif; ?>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
<?php endif; ?>

<div class="card mb-4">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h5 class="card-title mb-0 expense-title">Add Expense</h5>
                <p class="text-muted small mb-0">Record expenses separately for transparent net-income reporting.</p>
            </div>
        </div>
        <form method="POST" class="row g-2 align-items-end">
            <?php echo csrfField(); ?>
            <input type="hidden" name="action" value="add_expense">
            <input type="hidden" name="from" value="<?php echo escape($dateFrom); ?>">
            <input type="hidden" name="to" value="<?php echo escape($dateTo); ?>">
            <div class="col-lg-2 col-md-4">
                <label class="form-label">Date</label>
                <input type="date" class="form-control" name="expense_date" value="<?php echo escape($dateTo); ?>" required>
            </div>
            <div class="col-lg-2 col-md-4">
                <label class="form-label">Amount</label>
                <input type="number" class="form-control" name="expense_amount" min="0.01" step="0.01" required>
            </div>
            <div class="col-lg-6 col-md-8">
                <label class="form-label">Description</label>
                <input type="text" class="form-control" name="expense_notes" maxlength="180">
            </div>
            <div class="col-lg-2 col-md-4">
                <button type="submit" class="btn btn-danger w-100">Add Expense</button>
            </div>
        </form>
    </div>
</div>

<div class="card mb-4">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h5 class="card-title mb-0">Expenses Transparency Log</h5>
                <p class="text-muted small mb-0">All recorded expenses for the selected report period.</p>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-sm align-middle mb-0">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Description</th>
                        <th>Entered By</th>
                        <th class="text-end">Amount</th>
                        <?php if ($canManageExpenses): ?>
                            <th class="text-end">Action</th>
                        <?php endif; ?>
                    </tr>
                </thead>
                <tbody>
                    <?php if (empty($filteredExpenses)): ?>
                        <tr><td colspan="<?php echo $canManageExpenses ? '5' : '4'; ?>" class="text-center text-muted">No expenses recorded for this date range</td></tr>
                    <?php else: ?>
                        <?php foreach ($filteredExpenses as $expenseRow): ?>
                            <tr>
                                <td><?php echo escape($expenseRow['expense_date'] ?? '—'); ?></td>
                                <td><?php echo escape($expenseRow['description'] ?? '—'); ?></td>
                                <td><?php echo escape($expenseRow['created_by'] ?? 'System'); ?></td>
                                <td class="text-end">₱ <?php echo number_format((float)($expenseRow['amount'] ?? 0), 2); ?></td>
                                <?php if ($canManageExpenses): ?>
                                    <td class="text-end">
                                        <form method="POST" class="d-inline" onsubmit="return confirmExpenseDelete(this);">
                                            <?php echo csrfField(); ?>
                                            <input type="hidden" name="action" value="delete_expense">
                                            <input type="hidden" name="from" value="<?php echo escape($dateFrom); ?>">
                                            <input type="hidden" name="to" value="<?php echo escape($dateTo); ?>">
                                            <input type="hidden" name="expense_id" value="<?php echo escape($expenseRow['id'] ?? ''); ?>">
                                            <button type="submit" class="btn btn-sm btn-outline-danger">Delete</button>
                                        </form>
                                    </td>
                                <?php endif; ?>
                            </tr>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="card mb-4">
    <div class="card-body">
        <div class="mb-2">
            <div style="font-size:14px;font-weight:600;color:#000;">Income Trend</div>
            <div style="font-size:12px;color:#666;margin-top:2px;">Daily income between selected dates</div>
        </div>
        <div style="height:280px;position:relative;">
            <canvas id="incomeTrendChart"></canvas>
        </div>
    </div>
</div>

<!-- Technician Performance Leaderboard -->
<div class="card mb-4">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-2">
            <div>
                <h5 class="card-title mb-0">Top Technicians</h5>
                <p class="text-muted small mb-0">Performance ranking for the selected period</p>
            </div>
        </div>
        <div class="d-flex gap-1 mb-3">
            <button class="btn btn-sm btn-dark rpt-tech-tab active" data-tab="ranking" onclick="switchRptTechTab('ranking')">Ranking</button>
            <button class="btn btn-sm btn-outline-secondary rpt-tech-tab" data-tab="history" onclick="switchRptTechTab('history')">Points History</button>
        </div>
        <!-- Ranking Tab -->
        <div id="rptTechRanking">
        <?php if (empty($techPerformance)): ?>
            <p class="text-muted text-center py-3">No technician data for this date range.</p>
        <?php else: ?>
        <div class="table-responsive">
            <table class="table table-sm table-hover align-middle mb-0" style="font-size:12px;">
                <thead class="table-light">
                    <tr>
                        <th style="width:40px;">#</th>
                        <th>Technician</th>
                        <th class="text-center">Lead</th>
                        <th class="text-center">Assist</th>
                        <th class="text-center">Speed</th>
                        <th class="text-end">Revenue</th>
                        <th class="text-center">Quality</th>
                        <th class="text-center">Penalty</th>
                        <th class="text-end"><strong>Score</strong></th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($techPerformance as $rank => $tp): ?>
                    <tr>
                        <td class="text-muted"><?php echo $rank + 1; ?></td>
                        <td>
                            <div>
                                <strong><?php echo escape($tp['full_name']); ?></strong>
                                <div class="text-muted" style="font-size:10px;"><?php echo $tp['total_jos']; ?> JOs · <?php echo $tp['total_hours']; ?>h</div>
                            </div>
                        </td>
                        <td class="text-center"><span class="badge bg-dark"><?php echo $tp['lead_completed']; ?></span></td>
                        <td class="text-center"><span class="badge bg-secondary"><?php echo $tp['assist_completed']; ?></span></td>
                        <td class="text-center"><span class="text-success">+<?php echo $tp['speed_points']; ?></span></td>
                        <td class="text-end"><span class="text-success">+<?php echo number_format($tp['revenue_points'], 1); ?></span></td>
                        <td class="text-center"><span class="text-success">+<?php echo $tp['clean_points']; ?></span></td>
                        <td class="text-center">
                            <?php 
                                $penalty = $tp['return_penalty'] + $tp['removed_penalty'];
                                if ($penalty < 0): ?>
                                <span class="text-danger"><?php echo $penalty; ?></span>
                            <?php else: ?>
                                <span class="text-muted">0</span>
                            <?php endif; ?>
                        </td>
                        <td class="text-end">
                            <strong style="font-size:14px;"><?php echo number_format($tp['total_score'], 1); ?></strong>
                            <span class="text-muted" style="font-size:10px;">pts</span>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <?php endif; ?>
        </div>
        <!-- Points History Tab -->
        <div id="rptTechHistory" style="display:none;">
        <?php
        $pointsHistory = [];
        try {
            $db = Database::getInstance();
            $phParams = [];
            $phDateCond = '';
            if ($dateFrom && $dateTo) {
                $phDateCond = " AND DATE(tp.created_at) BETWEEN ? AND ?";
                $phParams = [$dateFrom, $dateTo];
            }
            $pointsHistory = $db->fetchAll(
                "SELECT s.staff_id, s.full_name, tp.reason, tp.points, tp.created_at, jo.job_order_number
                 FROM technician_points tp
                 INNER JOIN staff s ON s.id = tp.technician_id
                 LEFT JOIN job_orders jo ON jo.id = tp.job_order_id
                 WHERE 1=1 {$phDateCond}
                 ORDER BY tp.created_at DESC
                 LIMIT 50",
                $phParams
            );
        } catch (Exception $e) { $pointsHistory = []; }
        ?>
        <?php if (empty($pointsHistory)): ?>
            <p class="text-muted text-center py-3">No points history for this date range.</p>
        <?php else: ?>
        <div class="table-responsive">
            <table class="table table-sm table-hover align-middle mb-0" style="font-size:12px;">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Technician</th>
                        <th>JO #</th>
                        <th>Reason</th>
                        <th class="text-end">Points</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($pointsHistory as $ph): ?>
                    <tr>
                        <td class="text-muted"><?php echo escape($ph['staff_id'] ?? ''); ?></td>
                        <td><strong><?php echo escape($ph['full_name']); ?></strong></td>
                        <td><?php echo escape($ph['job_order_number'] ?? '—'); ?></td>
                        <td><?php echo escape($ph['reason']); ?></td>
                        <td class="text-end">
                            <?php if ((float)$ph['points'] > 0): ?>
                                <span class="text-success fw-bold">+<?php echo number_format((float)$ph['points'], 1); ?></span>
                            <?php else: ?>
                                <span class="text-danger fw-bold"><?php echo number_format((float)$ph['points'], 1); ?></span>
                            <?php endif; ?>
                        </td>
                        <td><?php echo date('M d, Y h:i A', strtotime($ph['created_at'])); ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <?php endif; ?>
        </div>
    </div>
</div>
<script>
function switchRptTechTab(tab) {
    document.getElementById('rptTechRanking').style.display = tab === 'ranking' ? '' : 'none';
    document.getElementById('rptTechHistory').style.display = tab === 'history' ? '' : 'none';
    document.querySelectorAll('.rpt-tech-tab').forEach(b => {
        b.className = b.dataset.tab === tab ? 'btn btn-sm btn-dark rpt-tech-tab active' : 'btn btn-sm btn-outline-secondary rpt-tech-tab';
    });
}
</script>

<div class="row g-4 mb-4">
    <div class="col-lg-6">
        <div class="card h-100">
            <div class="card-body">
                <h5 class="card-title">Service Type Revenue</h5>
                <div class="table-responsive report-scroll-panel report-table-wrap">
                    <table class="table table-sm align-middle mb-0 report-table">
                        <thead>
                            <tr>
                                <th>Service Type</th>
                                <th class="text-end">Orders</th>
                                <th class="text-end">Revenue</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($serviceStats)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No data for this range</td></tr>
                            <?php else: ?>
                                <?php foreach ($serviceStats as $row): ?>
                                    <tr>
                                        <td><?php echo escape($row['service_name'] ?? $row['service_type'] ?? 'Unknown'); ?></td>
                                        <td class="text-end"><?php echo number_format($row['count']); ?></td>
                                        <td class="text-end">₱ <?php echo number_format($row['total_revenue'], 2); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="card h-100">
            <div class="card-body">
                <h5 class="card-title">Payment Method Breakdown</h5>
                <div class="table-responsive report-table-wrap">
                    <table class="table table-sm align-middle mb-0 report-table">
                        <thead>
                            <tr>
                                <th>Method</th>
                                <th class="text-end">Orders</th>
                                <th class="text-end">Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($paymentMethods)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No paid orders for this range</td></tr>
                            <?php else: ?>
                                <?php foreach ($paymentMethods as $row): ?>
                                    <tr>
                                        <td><?php echo escape($row['payment_method'] ?? 'Unknown'); ?></td>
                                        <td class="text-end"><?php echo number_format($row['count']); ?></td>
                                        <td class="text-end">₱ <?php echo number_format($row['total_amount'], 2); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row g-4 mb-4" id="recent-activity">
    <div class="col-lg-6">
        <div class="card h-100">
            <div class="card-body">
                <h5 class="card-title">Job Order Status Summary</h5>
                <div class="table-responsive report-table-wrap">
                    <table class="table table-sm align-middle mb-0 report-table">
                        <thead>
                            <tr>
                                <th>Status</th>
                                <th class="text-end">Count</th>
                                <th class="text-end">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($statusSummary)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No status summary available</td></tr>
                            <?php else: ?>
                                <?php foreach ($statusSummary as $row): ?>
                                    <tr>
                                        <td><?php echo escape(ucwords(str_replace('_', ' ', $row['status']))); ?></td>
                                        <td class="text-end"><?php echo number_format($row['count']); ?></td>
                                        <td class="text-end">₱ <?php echo number_format($row['total_amount'], 2); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="card h-100">
            <div class="card-body">
                <h5 class="card-title">Top Customers</h5>
                <div class="table-responsive report-scroll-panel report-table-wrap">
                    <table class="table table-sm align-middle mb-0 report-table">
                        <thead>
                            <tr>
                                <th>Customer</th>
                                <th class="text-end">Visits</th>
                                <th class="text-end">Spent</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($topCustomers)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No customer activity yet</td></tr>
                            <?php else: ?>
                                <?php foreach ($topCustomers as $row): ?>
                                    <tr>
                                        <td><?php echo escape($row['customer_name']); ?> <span class="text-muted small d-block"><?php echo escape($row['customer_phone']); ?></span></td>
                                        <td class="text-end"><?php echo number_format($row['total_visits']); ?></td>
                                        <td class="text-end">₱ <?php echo number_format($row['total_spent'], 2); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row g-4 mb-4">
    <div class="col-lg-12">
        <div class="card h-100">
            <div class="card-body">
                <h5 class="card-title">Payment Status Summary</h5>
                <div class="table-responsive report-table-wrap">
                    <table class="table table-sm align-middle mb-0 report-table">
                        <thead>
                            <tr>
                                <th>Payment Status</th>
                                <th class="text-end">Orders</th>
                                <th class="text-end">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($paymentSummary)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No payment data available</td></tr>
                            <?php else: ?>
                                <?php foreach ($paymentSummary as $row): ?>
                                    <tr>
                                        <td><?php echo escape(ucwords(str_replace('_', ' ', $row['payment_status']))); ?></td>
                                        <td class="text-end"><?php echo number_format($row['count']); ?></td>
                                        <td class="text-end">₱ <?php echo number_format($row['total_amount'], 2); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row g-4 mb-4">
    <div class="col-lg-12">
        <div class="card h-100">
            <div class="card-body">
                <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 mb-3">
                    <h5 class="card-title mb-0">Recent Activity</h5>
                </div>
                <div class="table-responsive" style="max-height:360px;overflow-y:auto;">
                    <table class="table table-sm align-middle mb-0">
                        <thead>
                            <tr>
                                <th>Activity</th>
                                <th>User</th>
                                <th class="text-end">Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if (empty($recentActivity)): ?>
                                <tr><td colspan="3" class="text-center text-muted">No recent activity found for selected report date</td></tr>
                            <?php else: ?>
                                <?php foreach ($recentActivity as $activity): ?>
                                    <tr>
                                        <td>
                                            <strong><?php echo escape(formatActivityAction($activity['action'] ?? '')); ?></strong>
                                            <div class="text-muted small"><?php echo escape($activity['description']); ?></div>
                                        </td>
                                        <td><?php echo escape($activity['username'] ?? 'System'); ?></td>
                                        <td class="text-end"><?php echo escape(date('F d, Y h:i A', strtotime($activity['created_at']))); ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
(function() {
    window.confirmExpenseDelete = function(form) {
        appConfirm('Delete this expense entry?', {
            title: 'Delete Expense',
            confirmText: 'Delete',
            cancelText: 'Cancel',
            variant: 'danger'
        }).then(function(confirmed) {
            if (confirmed && form) {
                form.submit();
            }
        });

        return false;
    };

    window.confirmIncomeDelete = function(form) {
        appConfirm('Delete this income entry?', {
            title: 'Delete Income',
            confirmText: 'Delete',
            cancelText: 'Cancel',
            variant: 'danger'
        }).then(function(confirmed) {
            if (confirmed && form) {
                form.submit();
            }
        });

        return false;
    };
})();
</script>

<script>
(function() {
    const reportData = <?php echo json_encode($incomeReport); ?>;
    const labels = reportData.map(item => item.date);
    const totalIncomeData = reportData.map(item => parseFloat(item.total_income) || 0);
    const paidIncomeData = reportData.map(item => parseFloat(item.paid_income) || 0);
    const pendingIncomeData = reportData.map(item => parseFloat(item.pending_income) || 0);

    const ctx = document.getElementById('incomeTrendChart');
    if (ctx) {
        new Chart(ctx, {
            type: 'line',
            data: {
                labels,
                datasets: [
                    {
                        label: 'Total Income',
                        data: totalIncomeData,
                        borderColor: '#555555',
                        backgroundColor: function(context) {
                            const chart = context.chart;
                            const { ctx: c, chartArea } = chart;
                            if (!chartArea) return 'rgba(150,150,150,0.25)';
                            const g = c.createLinearGradient(0, chartArea.top, 0, chartArea.bottom);
                            g.addColorStop(0, 'rgba(140,140,140,0.50)');
                            g.addColorStop(1, 'rgba(200,200,200,0.02)');
                            return g;
                        },
                        tension: 0.42,
                        fill: true,
                        pointRadius: 4,
                        pointHoverRadius: 6,
                        pointBackgroundColor: '#333',
                        pointBorderColor: '#fff',
                        pointBorderWidth: 2,
                        borderWidth: 2
                    },
                    {
                        label: 'Paid Income',
                        data: paidIncomeData,
                        borderColor: '#198754',
                        backgroundColor: 'rgba(25,135,84,0.08)',
                        tension: 0.42,
                        fill: true,
                        pointRadius: 3,
                        pointBackgroundColor: '#198754',
                        pointBorderColor: '#fff',
                        pointBorderWidth: 2,
                        borderWidth: 1.5
                    },
                    {
                        label: 'Pending Income',
                        data: pendingIncomeData,
                        borderColor: '#dc3545',
                        backgroundColor: 'rgba(220,53,69,0.06)',
                        tension: 0.42,
                        fill: true,
                        pointRadius: 3,
                        pointBackgroundColor: '#dc3545',
                        pointBorderColor: '#fff',
                        pointBorderWidth: 2,
                        borderWidth: 1.5
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: { position: 'top', labels: { boxWidth: 12, font: { size: 11 } } },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                        callbacks: {
                            label: function(ctx) {
                                return ' ' + ctx.dataset.label + ': ₱' + ctx.parsed.y.toLocaleString('en-PH');
                            }
                        }
                    }
                },
                interaction: { mode: 'nearest', intersect: false },
                scales: {
                    x: {
                        grid: { display: false },
                        ticks: { color: '#777', font: { size: 11 } }
                    },
                    y: {
                        beginAtZero: true,
                        grid: { color: 'rgba(0,0,0,0.05)' },
                        ticks: {
                            color: '#777',
                            font: { size: 11 },
                            callback: function(v) {
                                if (v >= 1000000) return (v / 1000000).toFixed(1) + 'M';
                                if (v >= 1000) return (v / 1000).toFixed(0) + 'k';
                                return v;
                            }
                        }
                    }
                }
            }
        });
    }
})();
</script>

<?php include __DIR__ . '/../partials/footer.php'; ?>
