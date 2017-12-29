;; Custom code to format buffer after save
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))

(defun rustfmt-file ()
  "Auto run rustfmt on file if in rust mode after save."
  (when (eq major-mode 'rust-mode)
    (shell-command-to-string (format "rustfmt %s --force" buffer-file-name))
		(revert-buffer-no-confirm)
		))
