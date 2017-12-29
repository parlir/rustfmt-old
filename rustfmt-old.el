;; Custom code to format buffer after save
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

(defun rustfmt-file ()
  "Sync org file to Raspberry Pi with external script."
  (when (eq major-mode 'rust-mode)
    (shell-command-to-string (format "rustfmt %s --force" buffer-file-name))
		(revert-buffer-no-confirm)
		))
