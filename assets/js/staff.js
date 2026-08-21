/**
 * Staff Management JavaScript
 * Handles all client-side operations for staff management
 */

function renderImagePreview(container, src, alt = 'Preview') {
  if (!container) return;
  if (!src) {
    container.innerHTML = "";
    return;
  }

  container.innerHTML = `
    <div class="mt-2">
      <img src="${src}" alt="${alt}" class="img-thumbnail" style="max-width: 200px; max-height: 200px; object-fit: cover;">
    </div>
  `;
}

// Image preview for add form
document
  .getElementById("add_profile_image")
  ?.addEventListener("change", function (e) {
    const file = e.target.files[0];
    const preview = document.getElementById("add_image_preview");

    if (file) {
      // Validate file size (5MB)
      if (file.size > 5242880) {
        showToast("File size must not exceed 5MB", "error");
        e.target.value = "";
        preview.innerHTML = "";
        return;
      }

      // Validate file type
      const allowedTypes = ["image/jpeg", "image/jpg", "image/png"];
      if (!allowedTypes.includes(file.type)) {
        showToast("Only JPG, JPEG, and PNG files are allowed", "error");
        e.target.value = "";
        preview.innerHTML = "";
        return;
      }

      const reader = new FileReader();
      reader.onload = function (e) {
        renderImagePreview(preview, e.target.result, 'New Preview');
      };
      reader.readAsDataURL(file);
    } else {
      renderImagePreview(preview, '', 'New Preview');
    }
  });

// Image preview for edit form
document
  .getElementById("edit_profile_image")
  ?.addEventListener("change", function (e) {
    const file = e.target.files[0];
    const preview = document.getElementById("edit_image_preview");

    if (file) {
      // Validate file size (5MB)
      if (file.size > 5242880) {
        showToast("File size must not exceed 5MB", "error");
        e.target.value = "";
        preview.innerHTML = "";
        return;
      }

      // Validate file type
      const allowedTypes = ["image/jpeg", "image/jpg", "image/png"];
      if (!allowedTypes.includes(file.type)) {
        showToast("Only JPG, JPEG, and PNG files are allowed", "error");
        e.target.value = "";
        preview.innerHTML = "";
        return;
      }

      const reader = new FileReader();
      reader.onload = function (e) {
        renderImagePreview(preview, e.target.result, 'New Preview');
      };
      reader.readAsDataURL(file);
    } else {
      renderImagePreview(preview, '', 'New Preview');
    }
  });

// Add Staff Form Submission
document
  .getElementById("addStaffForm")
  ?.addEventListener("submit", async function (e) {
    e.preventDefault();

    // Validate password match
    const password = document.getElementById("add_password").value;
    const confirmPassword = document.getElementById(
      "add_confirm_password",
    ).value;

    if (password !== confirmPassword) {
      showToast("Passwords do not match", "error");
      return;
    }

    // Validate password strength
    if (password.length < 6) {
      showToast("Password must be at least 6 characters", "error");
      return;
    }

    const formData = new FormData(this);
    const submitBtn = this.querySelector('button[type="submit"]');
    const originalBtnText = submitBtn.innerHTML;

    // Disable submit button
    submitBtn.disabled = true;
    submitBtn.innerHTML =
      '<span class="spinner-border spinner-border-sm me-2"></span>Saving...';

    try {
      const response = await fetch(`${APP_URL}/api/staff.php`, {
        method: "POST",
        body: formData,
      });

      const data = await response.json();

      if (data.success) {
        showToast(data.message, "success");

        // Close modal
        const modal = bootstrap.Modal.getInstance(
          document.getElementById("addStaffModal"),
        );
        modal.hide();

        // Reset form
        this.reset();
        document.getElementById("add_image_preview").innerHTML = "";

        // Reload page after short delay
        setTimeout(() => {
          window.location.reload();
        }, 1500);
      } else {
        showToast(data.message, "error");
        submitBtn.disabled = false;
        submitBtn.innerHTML = originalBtnText;
      }
    } catch (error) {
      console.error("Error:", error);
      showToast("An error occurred. Please try again.", "error");
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalBtnText;
    }
  });

// Edit Staff Function
async function editStaff(id) {
  try {
    const response = await fetch(`${APP_URL}/api/staff.php?id=${id}`);
    const data = await response.json();

    if (data.success) {
      const staff = data.data;

      // Populate form fields
      document.getElementById("edit_staff_id").value = staff.id;
      document.getElementById("edit_full_name").value = staff.full_name;
      document.getElementById("edit_staff_login_id").value = staff.staff_id || "";
      document.getElementById("edit_email").value = staff.email;
      document.getElementById("edit_contact_number").value =
        staff.contact_number;
      document.getElementById("edit_address").value = staff.address || "";
      document.getElementById("edit_role").value = staff.role;
      document.getElementById("edit_status").value = staff.status;
      document.getElementById("editStaffForm").dataset.expectedUpdatedAt =
        staff.updated_at || "";

      // Clear password fields
      document.getElementById("edit_password").value = "";
      document.getElementById("edit_confirm_password").value = "";

      // Show current profile image if exists
      const preview = document.getElementById("edit_image_preview");
      if (staff.profile_image) {
        renderImagePreview(preview, `${APP_URL}/uploads/${staff.profile_image}`, 'Current Profile');
      } else {
        renderImagePreview(preview, '', 'Current Profile');
      }

      // Show modal
      const modal = new bootstrap.Modal(
        document.getElementById("editStaffModal"),
      );
      modal.show();
    } else {
      showToast(data.message, "error");
    }
  } catch (error) {
    console.error("Error:", error);
    showToast("Failed to load staff data", "error");
  }
}

// Edit Staff Form Submission
document
  .getElementById("editStaffForm")
  ?.addEventListener("submit", async function (e) {
    e.preventDefault();

    // Validate password match if password is provided
    const password = document.getElementById("edit_password").value;
    const confirmPassword = document.getElementById(
      "edit_confirm_password",
    ).value;

    if (password || confirmPassword) {
      if (password !== confirmPassword) {
        showToast("Passwords do not match", "error");
        return;
      }

      if (password.length < 6) {
        showToast("Password must be at least 6 characters", "error");
        return;
      }
    }

    const formData = new FormData(this);
    const expectedUpdatedAt = this.dataset.expectedUpdatedAt || "";
    if (expectedUpdatedAt) {
      formData.append("expected_updated_at", expectedUpdatedAt);
    }
    formData.append("_method", "PUT");
    const submitBtn = this.querySelector('button[type="submit"]');
    const originalBtnText = submitBtn.innerHTML;

    // Disable submit button
    submitBtn.disabled = true;
    submitBtn.innerHTML =
      '<span class="spinner-border spinner-border-sm me-2"></span>Updating...';

    try {
      const response = await fetch(`${APP_URL}/api/staff.php`, {
        method: "POST",
        body: formData,
      });

      const data = await response.json();

      if (data.success) {
        showToast(data.message, "success");

        // Close modal
        const modal = bootstrap.Modal.getInstance(
          document.getElementById("editStaffModal"),
        );
        modal.hide();

        // Reload page after short delay
        setTimeout(() => {
          window.location.reload();
        }, 1500);
      } else {
        showToast(data.message, "error");
        submitBtn.disabled = false;
        submitBtn.innerHTML = originalBtnText;
      }
    } catch (error) {
      console.error("Error:", error);
      showToast("An error occurred. Please try again.", "error");
      submitBtn.disabled = false;
      submitBtn.innerHTML = originalBtnText;
    }
  });

// View Staff Function
async function viewStaff(id) {
  try {
    const response = await fetch(`${APP_URL}/api/staff.php?id=${id}`);
    const data = await response.json();

    if (data.success) {
      const staff = data.data;

      // Build profile image HTML
      let profileImageHtml = "";
      if (staff.profile_image) {
        profileImageHtml = `
                    <img src="${APP_URL}/uploads/${staff.profile_image}" alt="Profile" 
                         class="img-thumbnail mb-3" style="max-width: 200px; max-height: 200px;">
                `;
      } else {
        profileImageHtml = `
                    <div class="rounded-circle bg-secondary text-white d-flex align-items-center justify-content-center mb-3" 
                         style="width: 100px; height: 100px; font-size: 36px; font-weight: 600;">
                        ${staff.full_name.substring(0, 2).toUpperCase()}
                    </div>
                `;
      }

      // Build status badge
      const statusBadge =
        staff.status === "active"
          ? '<span class="badge bg-success">Active</span>'
          : '<span class="badge bg-danger">Inactive</span>';

      // Build content
        const assignedJOs = Array.isArray(staff.assigned_job_orders)
          ? staff.assigned_job_orders
          : [];
        const technicianJoList =
          staff.role === "technician"
            ? `
                      <div class="col-12">
                          <label class="form-label fw-bold small text-muted">Assigned Job Orders</label>
                          ${assignedJOs.length === 0
                            ? '<p class="mb-0 text-muted">No assigned job orders.</p>'
                            : `
                              <div class="table-responsive">
                                  <table class="table table-sm table-hover align-middle mb-0" style="font-size:12px;">
                                      <thead class="table-light">
                                          <tr>
                                              <th>JO #</th>
                                              <th>Customer</th>
                                              <th>Plate</th>
                                              <th>Status</th>
                                              <th>My Time</th>
                                              <th>Date</th>
                                          </tr>
                                      </thead>
                                      <tbody>
                                          ${assignedJOs.map((jo, idx) => {
                                              const statusLabel = String(jo.status || "").replaceAll("_", " ");
                                              const techStatus = jo.tech_status || '';
                                              const isActive = (techStatus === 'assigned' || techStatus === 'working');
                                              const statusBg = isActive ? 'success' : 'dark';
                                              const createdDate = jo.created_at
                                                ? new Date(jo.created_at).toLocaleDateString("en-US", {
                                                    year: "numeric",
                                                    month: "short",
                                                    day: "numeric",
                                                  })
                                                : "N/A";
                                              const sessions = Array.isArray(jo.work_sessions) ? jo.work_sessions : [];
                                              const hasActivity = sessions.length > 0;
                                              return `
                                                  <tr style="cursor:${hasActivity ? 'pointer' : 'default'};" ${hasActivity ? `onclick="document.getElementById('techActivity_${idx}').style.display = document.getElementById('techActivity_${idx}').style.display === 'none' ? '' : 'none';"` : ''}>
                                                      <td class="fw-semibold">${jo.job_order_number || "N/A"}</td>
                                                      <td>${jo.customer_name || "N/A"}</td>
                                                      <td>${jo.plate_number || "N/A"}</td>
                                                      <td><span class="badge bg-secondary">${statusLabel || "N/A"}</span></td>
                                                      <td><span class="badge bg-${statusBg}" style="font-size:10px;">${isActive ? 'Active' : 'Inactive'}</span> <strong>${jo.tech_elapsed_display || "00:00:00"}</strong></td>
                                                      <td>${createdDate}</td>
                                                  </tr>
                                                  ${hasActivity ? `
                                                  <tr id="techActivity_${idx}" style="display:none;">
                                                      <td colspan="6" style="padding:0 8px 8px 8px;background:#f9f9f9;">
                                                          <small class="text-muted fw-bold d-block mb-1" style="padding-top:6px;">Time Activity Log</small>
                                                          <table class="table table-sm table-bordered mb-0" style="font-size:11px;">
                                                              <thead><tr class="table-light">
                                                                  <th>#</th>
                                                                  <th>Start</th>
                                                                  <th>Stop</th>
                                                                  <th>Worked</th>
                                                                  <th>Idle</th>
                                                              </tr></thead>
                                                              <tbody>
                                                                  ${sessions.map((s, si) => {
                                                                      const startTime = s.start_time ? new Date(s.start_time).toLocaleString('en-PH', {month:'short',day:'numeric',hour:'2-digit',minute:'2-digit',second:'2-digit'}) : '—';
                                                                      const endTime = s.end_time ? new Date(s.end_time).toLocaleString('en-PH', {month:'short',day:'numeric',hour:'2-digit',minute:'2-digit',second:'2-digit'}) : '<span class="badge bg-success" style="font-size:9px;">Running</span>';
                                                                      let durDisplay = '—';
                                                                      if (s.end_time && s.start_time) {
                                                                          const durSec = Math.max(0, Math.floor((new Date(s.end_time) - new Date(s.start_time)) / 1000));
                                                                          durDisplay = String(Math.floor(durSec/3600)).padStart(2,'0') + ':' + String(Math.floor((durSec%3600)/60)).padStart(2,'0') + ':' + String(durSec%60).padStart(2,'0');
                                                                      } else if (!s.end_time && s.start_time) {
                                                                          const durSec = Math.max(0, Math.floor((Date.now() - new Date(s.start_time).getTime()) / 1000));
                                                                          durDisplay = '<span class="text-success">' + String(Math.floor(durSec/3600)).padStart(2,'0') + ':' + String(Math.floor((durSec%3600)/60)).padStart(2,'0') + ':' + String(durSec%60).padStart(2,'0') + '</span>';
                                                                      }
                                                                      // Idle gap from previous stop to this start
                                                                      let idle = '—';
                                                                      if (si > 0 && sessions[si-1].end_time && s.start_time) {
                                                                          const gapSec = Math.max(0, Math.floor((new Date(s.start_time) - new Date(sessions[si-1].end_time)) / 1000));
                                                                          if (gapSec > 0) idle = String(Math.floor(gapSec/3600)).padStart(2,'0') + ':' + String(Math.floor((gapSec%3600)/60)).padStart(2,'0') + ':' + String(gapSec%60).padStart(2,'0');
                                                                      }
                                                                      const notesHtml = s.notes ? '<div style="font-size:10px;color:#666;">'+s.notes+'</div>' : '';
                                                                      return '<tr><td>'+(si+1)+'</td><td>'+startTime+'</td><td>'+endTime+notesHtml+'</td><td class="font-monospace">'+durDisplay+'</td><td class="font-monospace text-muted">'+idle+'</td></tr>';
                                                                  }).join('')}
                                                              </tbody>
                                                          </table>
                                                      </td>
                                                  </tr>` : ''}
                                              `;
                                          }).join("")}
                                      </tbody>
                                  </table>
                              </div>
                          `}
                      </div>
              `
            : "";

      const content = `
                <div class="text-center">
                    ${profileImageHtml}
                </div>
                <div class="row g-3">
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Staff ID</label>
                        <p class="mb-0">${staff.staff_id}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Full Name</label>
                        <p class="mb-0">${staff.full_name}</p>
                    </div>
                    <div class="col-md-6">
                      <label class="form-label fw-bold small text-muted">Login ID</label>
                      <p class="mb-0">${staff.staff_id}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Email</label>
                        <p class="mb-0">${staff.email}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Contact Number</label>
                        <p class="mb-0">${staff.contact_number}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Role/Position</label>
                        <p class="mb-0"><span class="badge bg-secondary">${staff.role}</span></p>
                    </div>
                    <div class="col-md-12">
                        <label class="form-label fw-bold small text-muted">Address</label>
                        <p class="mb-0">${staff.address || "N/A"}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Status</label>
                        <p class="mb-0">${statusBadge}</p>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label fw-bold small text-muted">Date Created</label>
                        <p class="mb-0">${new Date(
                          staff.created_at,
                        ).toLocaleDateString("en-US", {
                          year: "numeric",
                          month: "long",
                          day: "numeric",
                        })}</p>
                    </div>
                    ${technicianJoList}
                </div>
            `;

      document.getElementById("viewStaffContent").innerHTML = content;

      // Show modal
      const modal = new bootstrap.Modal(
        document.getElementById("viewStaffModal"),
      );
      modal.show();
    } else {
      showToast(data.message, "error");
    }
  } catch (error) {
    console.error("Error:", error);
    showToast("Failed to load staff data", "error");
  }
}

// Toggle Status Function
async function toggleStatus(id, currentStatus, expectedUpdatedAt = "") {
  const action = currentStatus === "active" ? "deactivate" : "activate";
  const confirmMessage = `Are you sure you want to ${action} this staff member?`;

  const confirmed = await appConfirm(confirmMessage, {
    title: "Change Staff Status",
    confirmText: action === "deactivate" ? "Deactivate" : "Activate",
    variant: action === "deactivate" ? "warning" : "primary",
  });

  if (!confirmed) {
    return;
  }

  const newStatus = currentStatus === "active" ? "inactive" : "active";

  try {
    const response = await fetch(`${APP_URL}/api/staff.php`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
      body: new URLSearchParams({
        id: id,
        status: newStatus,
        expected_updated_at: expectedUpdatedAt || "",
      }).toString(),
    });

    const data = await response.json();

    if (data.success) {
      showToast(`Staff ${action}d successfully`, "success");
      setTimeout(() => {
        window.location.reload();
      }, 1500);
    } else {
      showToast(data.message, "error");
    }
  } catch (error) {
    console.error("Error:", error);
    showToast("An error occurred. Please try again.", "error");
  }
}

// Delete Staff Function
async function deleteStaff(id) {
  const confirmed = await appConfirm(
    "Are you sure you want to delete this staff member? This action cannot be undone.",
    {
      title: "Delete Staff",
      confirmText: "Delete",
      variant: "danger",
    },
  );

  if (!confirmed) {
    return;
  }

  try {
    const response = await fetch(`${APP_URL}/api/staff.php?id=${id}`, {
      method: "DELETE",
    });

    const data = await response.json();

    if (data.success) {
      showToast(data.message, "success");
      setTimeout(() => {
        window.location.reload();
      }, 1500);
    } else {
      showToast(data.message, "error");
    }
  } catch (error) {
    console.error("Error:", error);
    showToast("An error occurred. Please try again.", "error");
  }
}

// Make functions globally available
window.editStaff = editStaff;
window.viewStaff = viewStaff;
window.toggleStatus = toggleStatus;
window.deleteStaff = deleteStaff;
