<?php

define('APP_ACCESS', true);

require_once __DIR__ . '/includes/config.php';
require_once __DIR__ . '/includes/Database.php';
require_once __DIR__ . '/includes/functions.php';
require_once __DIR__ . '/includes/session.php';

// Check if user is logged in
if (isLoggedIn()) {
    // Redirect to dashboard
    redirect(routeUrl('dashboard'));
} else {
    // Redirect to login with main shop as the default branch view
    redirect(routeUrl('login'));
}
