-- Allow Hyprland to run on NVIDIA GPUs without requiring KMS (Kernel Mode Setting) support. This is useful for systems where KMS is not available or not functioning properly.
hl.env("AQ_NO_KMS_REQUIREMENT", "1")
-- GPU: https://wiki.hypr.land/Configuring/Multi-GPU/
hl.env("AQ_DRM_DEVICES", "/dev/dri/card1:/dev/dri/card0")

------ https://wiki.hypr.land/Nvidia/
-- To force GBM as a backend, set the following environment variables:
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- See Archwiki Wayland Page for more details on those variables

-- - Hardware acceleration on NVIDIA GPUs.
hl.env("LIBVA_DRIVER_NAME","nvidia")
-- See Archwiki Hardware Acceleration Page for details and necessary values before setting this variable.

-- - Controls if G-Sync capable monitors should use Variable Refresh Rate (VRR)
-- hl.env("__GL_GSYNC_ALLOWED")
-- See Nvidia Documentation for details.

-- - Controls if Adaptive Sync should be used. Recommended to set as “0” to avoid having problems on some games.
hl.env("__GL_VRR_ALLOWED","0")

-- echo 'export __NV_DISABLE_EXPLICIT_SYNC=1' | sudo tee -a /etc/profile
