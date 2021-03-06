(defgroup dotemacs-evil nil
  "Configuration options for evil-mode."
  :group 'dotemacs
  :prefix 'dotemacs-evil)

(defcustom dotemacs-evil/evil-state-modes
  '(fundamental-mode
    text-mode
    prog-mode
    sws-mode
    dired-mode
    comint-mode
    log-edit-mode
    compilation-mode)
  "List of modes that should start up in Evil state."
  :type '(repeat (symbol))
  :group 'dotemacs-evil)

(defcustom dotemacs-evil/emacs-state-modes
  '(debugger-mode
    git-commit-mode
    git-rebase-mode)
  "List of modes that should start up in Evil Emacs state."
  :type '(repeat (symbol))
  :group 'dotemacs-evil)

(defcustom dotemacs-evil/emacs-cursor
  "red"
  "The color of the cursor when in Emacs state."
  :type 'color)

; (setq evil-want-C-u-scroll t)
(setq evil-search-module 'evil-search)
(setq evil-magic 'very-magic)

(require-package 'evil)
(require 'evil)
(evil-mode t)

(unless (display-graphic-p)
  (evil-esc-mode))

(setq evil-cross-lines t)

(require-package 'evil-leader)
(global-evil-leader-mode t)

(require-package 'evil-matchit)
(global-evil-matchit-mode t)

(setq evilnc-hotkey-comment-operator "gc")
(require-package 'evil-nerd-commenter)
(require 'evil-nerd-commenter)

(require-package 'evil-surround)
(global-evil-surround-mode t)

(require-package 'evil-visualstar)
(global-evil-visualstar-mode t)

(global-set-key (kbd "*") 'evil-search-forward)
(global-set-key (kbd "#") 'evil-search-backward)


(provide 'init-evil)
