<?php
define('APP_ACCESS', true);
require_once __DIR__ . '/../../includes/config.php';
require_once __DIR__ . '/../../includes/Database.php';
require_once __DIR__ . '/../../includes/functions.php';
require_once __DIR__ . '/../../includes/session.php';
require_once __DIR__ . '/../../includes/security.php';

requireLogin();
requireAnyRole(['admin', 'cashier']);

$pageTitle = 'Settings';

include __DIR__ . '/../partials/header.php';
?>

<div class="container-fluid">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="mb-0">Settings</h4>
        </div>
    </div>

    <div class="row g-3">
        <div class="col-md-6 col-lg-4">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h6 class="mb-2"><i class="bi bi-printer me-2"></i>Print Template</h6>
                    <p class="text-muted small mb-3">Edit print header/footer branding and preview template used in Job Order and Estimate printouts.</p>
                    <div class="mt-auto">
                        <a href="<?php echo routeUrl('settings_print_template'); ?>" class="btn btn-dark btn-sm">
                            <i class="bi bi-pencil-square"></i> Open Editor
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-4">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h6 class="mb-2"><i class="bi bi-image me-2"></i>System Logo</h6>
                    <p class="text-muted small mb-3">Manage logo used in sidebar, top bar, login page, and browser tab icon.</p>
                    <div class="mt-auto">
                        <a href="<?php echo routeUrl('settings_system_logo'); ?>" class="btn btn-dark btn-sm">
                            <i class="bi bi-pencil-square"></i> Open Editor
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <?php if (hasRole('admin')): ?>
        <div class="col-md-6 col-lg-4">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h6 class="mb-2"><i class="bi bi-shield-check me-2"></i>Role Permissions Matrix</h6>
                    <p class="text-muted small mb-3">View what each role can and cannot do based on current runtime access rules.</p>
                    <div class="mt-auto">
                        <a href="<?php echo routeUrl('settings_role_permissions'); ?>" class="btn btn-dark btn-sm">
                            <i class="bi bi-table"></i> View Matrix
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <?php endif; ?>

        <div class="col-md-6 col-lg-4">
            <div class="card h-100">
                <div class="card-body d-flex flex-column">
                    <h6 class="mb-2"><i class="bi bi-megaphone me-2"></i>Announcement</h6>
                    <p class="text-muted small mb-3">Set a message that appears to all users after they log in.</p>
                    <div class="mt-auto">
                        <a href="<?php echo routeUrl('settings_announcement'); ?>" class="btn btn-dark btn-sm">
                            <i class="bi bi-pencil-square"></i> Open Editor
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<?php include __DIR__ . '/../partials/footer.php'; ?>
