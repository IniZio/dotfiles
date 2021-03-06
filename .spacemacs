;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
    ;; Base distribution to use. This is a layer contained in the directory
    ;; `+distribution'. For now available distributions are `spacemacs-base'
    ;; or `spacemacs'. (default 'spacemacs)
    dotspacemacs-distribution 'spacemacs
    ;; Lazy installation of layers (i.e. layers are installed only when a file
    ;; with a supported type is opened). Possible values are `all', `unused'
    ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
    ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
    ;; lazy install any layer that support lazy installation even the layers
    ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
    ;; installation feature and you have to explicitly list a layer in the
    ;; variable `dotspacemacs-configuration-layers' to install it.
    ;; (default 'unused)
    dotspacemacs-enable-lazy-installation 'unused
    ;; If non-nil then Spacemacs will ask for confirmation before installing
    ;; a layer lazily. (default t)
    dotspacemacs-ask-for-lazy-installation t
    ;; If non-nil layers with lazy install support are lazy installed.
    ;; List of additional paths where to look for configuration layers.
    ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
    dotspacemacs-configuration-layer-path '()
    ;; List of configuration layers to load.
    dotspacemacs-configuration-layers
    '(
       yaml
       javascript
       html
       markdown
       ;; ----------------------------------------------------------------
       ;; Example of useful layers you may want to use right away.
       ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
       ;; <M-m f e R> (Emacs style) to install them.
       ;; ----------------------------------------------------------------
       helm
       (auto-completion :variables
         auto-completion-enable-snippets-in-popup t
         auto-completion-enable-help-tooltip t
         auto-completion-enable-sort-by-usage t)
       better-defaults
       emacs-lisp
       (git :variables
         git-gutter-use-fringe t)
       github
       markdown
       ;; org
       (shell :variables
         shell-default-height 80
         shell-default-position 'bottom)
       ;; spell-checking
       syntax-checking
       (version-control :variables
         version-control-diff-tool 'diff-hl
         version-control-global-margin t)
       themes-megapack
       )
    ;; List of additional packages that will be installed without being
    ;; wrapped in a layer. If you need some configuration for these
    ;; packages, then consider creating a layer. You can also put the
    ;; configuration in `dotspacemacs/user-config'.
    dotspacemacs-additional-packages '(vue-mode
                                       jsx-mode
                                        editorconfig
                                        neotree
                                        projectile
                                        popup
                                        autopair
                                        exec-path-from-shell
                                        hungry-delete
                                        spaceline
                                        atom-one-dark-theme
                                        switch-buffer-functions
                                        all-the-icons
                                        powerline
                                        flycheck-color-mode-line
                                        smooth-scroll
                                        wakatime-mode)
    ;; A list of packages that cannot be updated.
    dotspacemacs-frozen-packages '()
    ;; A list of packages that will not be installed and loaded.
    dotspacemacs-excluded-packages '()
    ;; Defines the behaviour of Spacemacs when installing packages.
    ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
    ;; `used-only' installs only explicitly used packages and uninstall any
    ;; unused packages as well as their unused dependencies.
    ;; `used-but-keep-unused' installs only the used packages but won't uninstall
    ;; them if they become unused. `all' installs *all* packages supported by
    ;; Spacemacs and never uninstall them. (default is `used-only')
    dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
    ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
    ;; possible. Set it to nil if you have no way to use HTTPS in your
    ;; environment, otherwise it is strongly recommended to let it set to t.
    ;; This variable has no effect if Emacs is launched with the parameter
    ;; `--insecure' which forces the value of this variable to nil.
    ;; (default t)
    dotspacemacs-elpa-https t
    ;; Maximum allowed time in seconds to contact an ELPA repository.
    dotspacemacs-elpa-timeout 5
    ;; If non nil then spacemacs will check for updates at startup
    ;; when the current branch is not `develop'. Note that checking for
    ;; new versions works via git commands, thus it calls GitHub services
    ;; whenever you start Emacs. (default nil)
    dotspacemacs-check-for-update nil
    ;; If non-nil, a form that evaluates to a package directory. For example, to
    ;; use different package directories for different Emacs versions, set this
    ;; to `emacs-version'.
    dotspacemacs-elpa-subdirectory nil
    ;; One of `vim', `emacs' or `hybrid'.
    ;; `hybrid' is like `vim' except that `insert state' is replaced by the
    ;; `hybrid state' with `emacs' key bindings. The value can also be a list
    ;; with `:variables' keyword (similar to layers). Check the editing styles
    ;; section of the documentation for details on available variables.
    ;; (default 'vim)
    dotspacemacs-editing-style 'vim
    ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
    dotspacemacs-verbose-loading nil
    ;; Specify the startup banner. Default value is `official', it displays
    ;; the official spacemacs logo. An integer value is the index of text
    ;; banner, `random' chooses a random text banner in `core/banners'
    ;; directory. A string value must be a path to an image format supported
    ;; by your Emacs build.
    ;; If the value is nil then no banner is displayed. (default 'official)
    dotspacemacs-startup-banner 'random
    ;; List of items to show in startup buffer or an association list of
    ;; the form `(list-type . list-size)`. If nil then it is disabled.
    ;; Possible values for list-type are:
    ;; `recents' `bookmarks' `projects' `agenda' `todos'."
    ;; List sizes may be nil, in which case
    ;; `spacemacs-buffer-startup-lists-length' takes effect.
    dotspacemacs-startup-lists '((recents . 5)
                                  (projects . 4)
                                  (agenda . 4))
    ;; True if the home buffer should respond to resize events.
    dotspacemacs-startup-buffer-responsive t
    ;; Default major mode of the scratch buffer (default `text-mode')
    dotspacemacs-scratch-mode 'text-mode
    ;; List of themes, the first of the list is loaded when spacemacs starts.
    ;; Press <SPC> T n to cycle to the next theme in the list (works great
    ;; with 2 themes variants, one dark and one light)
    dotspacemacs-themes '(monokai
                          spacemacs-dark
                           atom-one-dark
                           spacemacs-light)
    ;; If non nil the cursor color matches the state color in GUI Emacs.
    dotspacemacs-colorize-cursor-according-to-state t
    ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
    ;; quickly tweak the mode-line size to make separators look not too crappy.
    ;; "Source Code Pro"
    dotspacemacs-default-font '("Input Mono"
                                 :size 15
                                 :weight normal
                                 :width normal
                                 :powerline-scale 1.1)
    ;; The leader key
    dotspacemacs-leader-key "SPC"
    ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
    ;; (default "SPC")
    dotspacemacs-emacs-command-key "SPC"
    ;; The key used for Vim Ex commands (default ":")
    dotspacemacs-ex-command-key ":"
    ;; The leader key accessible in `emacs state' and `insert state'
    ;; (default "M-m")
    dotspacemacs-emacs-leader-key "M-m"
    ;; Major mode leader key is a shortcut key which is the equivalent of
    ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
    dotspacemacs-major-mode-leader-key ","
    ;; Major mode leader key accessible in `emacs state' and `insert state'.
    ;; (default "C-M-m")
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"
    ;; These variables control whether separate commands are bound in the GUI to
    ;; the key pairs C-i, TAB and C-m, RET.
    ;; Setting it to a non-nil value, allows for separate commands under <C-i>
    ;; and TAB or <C-m> and RET.
    ;; In the terminal, these pairs are generally indistinguishable, so this only
    ;; works in the GUI. (default nil)
    dotspacemacs-distinguish-gui-tab nil
    ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
    dotspacemacs-remap-Y-to-y$ nil
    ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
    ;; there. (default t)
    dotspacemacs-retain-visual-state-on-shift t
    ;; If non-nil, J and K move lines up and down when in visual mode.
    ;; (default nil)
    dotspacemacs-visual-line-move-text nil
    ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
    ;; (default nil)
    dotspacemacs-ex-substitute-global nil
    ;; Name of the default layout (default "Default")
    dotspacemacs-default-layout-name "Default"
    ;; If non nil the default layout name is displayed in the mode-line.
    ;; (default nil)
    dotspacemacs-display-default-layout nil
    ;; If non nil then the last auto saved layouts are resume automatically upon
    ;; start. (default nil)
    dotspacemacs-auto-resume-layouts nil
    ;; Size (in MB) above which spacemacs will prompt to open the large file
    ;; literally to avoid performance issues. Opening a file literally means that
    ;; no major mode or minor modes are active. (default is 1)
    dotspacemacs-large-file-size 1
    ;; Location where to auto-save files. Possible values are `original' to
    ;; auto-save the file in-place, `cache' to auto-save the file to another
    ;; file stored in the cache directory and `nil' to disable auto-saving.
    ;; (default 'cache)
    dotspacemacs-auto-save-file-location 'cache
    ;; Maximum number of rollback slots to keep in the cache. (default 5)
    dotspacemacs-max-rollback-slots 5
    ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
    dotspacemacs-helm-resize nil
    ;; if non nil, the helm header is hidden when there is only one source.
    ;; (default nil)
    dotspacemacs-helm-no-header nil
    ;; define the position to display `helm', options are `bottom', `top',
    ;; `left', or `right'. (default 'bottom)
    dotspacemacs-helm-position 'bottom
    ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
    ;; in all non-asynchronous sources. If set to `source', preserve individual
    ;; source settings. Else, disable fuzzy matching in all sources.
    ;; (default 'always)
    dotspacemacs-helm-use-fuzzy 'always
    ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
    ;; several times cycle between the kill ring content. (default nil)
    dotspacemacs-enable-paste-transient-state nil
    ;; Which-key delay in seconds. The which-key buffer is the popup listing
    ;; the commands bound to the current keystroke sequence. (default 0.4)
    dotspacemacs-which-key-delay 0.01
    ;; Which-key frame position. Possible values are `right', `bottom' and
    ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
    ;; right; if there is insufficient space it displays it at the bottom.
    ;; (default 'bottom)
    dotspacemacs-which-key-position 'bottom
    ;; If non nil a progress bar is displayed when spacemacs is loading. This
    ;; may increase the boot time on some systems and emacs builds, set it to
    ;; nil to boost the loading time. (default t)
    dotspacemacs-loading-progress-bar t
    ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
    ;; (Emacs 24.4+ only)
    dotspacemacs-fullscreen-at-startup nil
    ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
    ;; Use to disable fullscreen animations in OSX. (default nil)
    dotspacemacs-fullscreen-use-non-native nil
    ;; If non nil the frame is maximized when Emacs starts up.
    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
    ;; (default nil) (Emacs 24.4+ only)
    dotspacemacs-maximized-at-startup nil
    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's active or selected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-active-transparency 90
    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's inactive or deselected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-inactive-transparency 90
    ;; If non nil show the titles of transient states. (default t)
    dotspacemacs-show-transient-state-title t
    ;; If non nil show the color guide hint for transient state keys. (default t)
    dotspacemacs-show-transient-state-color-guide t
    ;; If non nil unicode symbols are displayed in the mode line. (default t)
    dotspacemacs-mode-line-unicode-symbols t
    ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
    ;; scrolling overrides the default behavior of Emacs which recenters point
    ;; when it reaches the top or bottom of the screen. (default t)
    dotspacemacs-smooth-scrolling t
    ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
    ;; derivatives. If set to `relative', also turns on relative line numbers.
    ;; (default nil)
    dotspacemacs-line-numbers t
    ;; Code folding method. Possible values are `evil' and `origami'.
    ;; (default 'evil)
    dotspacemacs-folding-method 'evil
    ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode nil
    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc…
    ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
    dotspacemacs-smart-closing-parenthesis nil
    ;; Select a scope to highlight delimiters. Possible values are `any',
    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
    ;; emphasis the current one). (default 'all)
    dotspacemacs-highlight-delimiters 'all
    ;; If non nil, advise quit functions to keep server open when quitting.
    ;; (default nil)
    dotspacemacs-persistent-server nil
    ;; List of search tool executable names. Spacemacs uses the first installed
    ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
    ;; (default '("ag" "pt" "ack" "grep"))
    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
    ;; The default package repository used if no explicit repository has been
    ;; specified with an installed package.
    ;; Not used for now. (default nil)
    dotspacemacs-default-package-repository nil
    ;; Delete whitespace while saving buffer. Possible values are `all'
    ;; to aggressively delete empty line and long sequences of whitespace,
    ;; `trailing' to delete only the whitespace at end of lines, `changed'to
    ;; delete only whitespace for changed lines or `nil' to disable cleanup.
    ;; (default nil)
    dotspacemacs-whitespace-cleanup nil
    ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; default line spacing
  (setq-default line-spacing 0)
  (setq-default line-height 1)

  (setq diff-hl-side 'right)

  (setq-default git-magit-status-fullscreen t)
  (setq magit-repository-directories '("~/Source/"))

  ;; (custom-set-faces
  ;;   (set-face-attribute 'neo-button-face      nil :height 10)
  ;;   (set-face-attribute 'neo-file-link-face   nil :height 10)
  ;;   (set-face-attribute 'neo-dir-link-face    nil :height 1)
  ;;   (set-face-attribute 'neo-header-face      nil :height 1)
  ;;   (set-face-attribute 'neo-expand-btn-face  nil :height 1)
  ;;   (set-face-attribute 'neo-banner-face      nil :height 10)

  ;;   '(neo-banner-face ((t :inherit shadow)))
  ;;   '(neo-button-face ((t :inherit dired-directory)))
  ;;   '(neo-dir-link-face ((t :inherit dired-directory)))
  ;;   '(neo-expand-btn-face ((t :inherit button)))
  ;;   '(neo-file-link-face ((t :inherit default)))
  ;;   '(neo-header-face ((t :inherit shadow)))
  ;;   '(neo-root-dir-face ((t :inherit link-visited :underline nil)))
  ;;   )

  (use-package all-the-icons)
  (use-package powerline
    :ensure t
    :config
    (powerline-center-evil-theme)

    (use-package flycheck-color-mode-line
      :ensure t
      :config
      (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))
    )
  (use-package web-mode
    :config
    ;; (set-face-attribute 'web-mode-doctype-face nil :foreground "SlateBlue")
    (set-face-attribute 'web-mode-html-tag-face nil :foreground "#F92672")
    (set-face-attribute 'web-mode-html-tag-face)
    ;; (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "red")
    (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#A6E22E")
    ;; (set-face-attribute 'web-mode-css-at-rule-face nil :foreground "Pink3")
    ;; (set-face-attribute 'web-mode-variable-name-face nil :foreground "DarkGreen")
    ;; (set-face-attribute 'web-mode-comment-face nil :foreground "red")
    )
  (use-package vue-mode
    :config
    ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
    (setq mmm-submode-decoration-level 0)
    )
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (xterm-mouse-mode -1)
  ;;Keybindings
  (global-set-key (kbd "C-`") 'spacemacs/default-pop-shell)
  (global-set-key [f8] 'neotree-project-dir)
  (global-set-key [f9] 'neotree-toggle)
  (global-git-commit-mode t)

  (setq-default tab-always-indent nil)

  (setq-default indent-tabs-mode nil)
  (setq-default default-tab-width 2)
  (setq-default tab-width 2)
  (setq-default c-basic-offset 2)
  (setq indent-line-function 'insert-tab)

  (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  ;; hooks
  (add-hook 'switch-buffer-functions 'neotree-resize-window)

  (global-git-commit-mode t)
  (global-hungry-delete-mode)

  (require 'spaceline-config)
  (spaceline-spacemacs-theme)

  (spacemacs/toggle-truncate-lines-off)

  ;; Visual line navigation for textual modes
  (add-hook 'text-mode-hook 'spacemacs/toggle-visual-line-navigation-on)

  (init-smooth-scroll)

  (set-face-attribute 'font-lock-function-name-face nil :weight 'bold)
  (set-face-attribute 'font-lock-type-face nil :weight 'semi-bold :slant 'italic)
  ;; (set-face-attribute 'font-lock-string-face nil  :slant 'oblique :foreground '"forest green")

  (web-mode)
  ;; (set-face-attribute 'web-mode-doctype-face nil :foreground "SlateBlue")
  (set-face-attribute 'web-mode-html-tag-face nil :foreground "#F92672")
  ;; (set-face-attribute 'web-mode-html-tag-bracket-face nil :foreground "red")
  (set-face-attribute 'web-mode-html-attr-name-face nil :foreground "#A6E22E")
  ;; (set-face-attribute 'web-mode-css-at-rule-face nil :foreground "Pink3")
  ;; (set-face-attribute 'web-mode-variable-name-face nil :foreground "DarkGreen")
  ;; (set-face-attribute 'web-mode-comment-face nil :foreground "red")

  ;; (vue-mode)
  (setq mmm-submode-decoration-level 0)

  ;; js2 ignore missing semicolon
  (setq js2-strict-missing-semi-warning nil)
  (setq js2-missing-semi-one-line-override nil)


  ;; tern
  (add-to-list 'load-path "~/tern/emacs")
  (autoload 'tern-mode "tern.el" nil t)

  (editorconfig-mode 1)

  ;; show neotree
  ;; (require 'neotree')
  (setq neo-theme (if (display-graphic-p) 'default 'nerd))
  (setq neo-smart-open t)
  (setq neo-create-file-auto-open t)

  ;; (neotree-show)
  (neotree-dir "~/magic")
  ;; (neotree-project-dir)

  (add-hook 'markdown-mode-hook 'pandoc-mode)
  (editorconfig-mode 1)
  )

(defun neotree-resize-window (&rest _args)
  "Resize neotree window.
https://github.com/jaypei/emacs-neotree/pull/110"
  (interactive)
  (neo-buffer--with-resizable-window
    (let ((fit-window-to-buffer-horizontally t))
      (fit-window-to-buffer))))

(add-hook 'neo-change-root-hook #'neotree-resize-window)
(add-hook 'neo-enter-hook #'neotree-resize-window)

(defun neotree-project-dir ()
  "Open NeoTree using the project root, using find-file-in-project,
or the current buffer directory."
  (interactive)
  (let ((project-dir
          (ignore-errors
           ;;; Pick one: projectile or find-file-in-project
            (projectile-project-root)
            ;; (ffip-project-root)
            ))
         (file-name (buffer-file-name))
         (neo-smart-open t))
    (if (and (fboundp 'neo-global--window-exists-p)
          (neo-global--window-exists-p))
      (neotree-hide)
      (progn
        (neotree-show)
        (if project-dir
          (neotree-dir project-dir))
        (if file-name
          ;; (neotree-find file-name)
          ))))
  )

(defun init-smooth-scroll ()
  (use-package smooth-scroll
    :defer
    :init
    (progn
      (require 'smooth-scroll)
      (smooth-scroll-mode 1)
      (setq smooth-scroll/vscroll-step-size 3))))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(custom-safe-themes
     (quote
       ("51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" "08b8807d23c290c840bbb14614a83878529359eaba1805618b3be7d61b0b0a32" "f04122bbc305a202967fa1838e20ff741455307c2ae80a26035fbf5d637e325f" "73a13a70fd111a6cd47f3d4be2260b1e4b717dbf635a9caee6442c949fad41cd" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
  '(evil-want-Y-yank-to-eol nil)
  '(exec-path
     (quote
       ("/home/iniz/.local/share/umake/bin/" "/home/iniz/bin/" "/home/iniz/.local/bin/" "/usr/local/sbin/" "/usr/local/bin/" "/usr/sbin/" "/usr/bin/" "/sbin/" "/bin/" "/usr/games/" "/usr/local/games/" "/snap/bin/" "/usr/lib/jvm/java-8-oracle/bin/" "/usr/lib/jvm/java-8-oracle/db/bin/" "/usr/lib/jvm/java-8-oracle/jre/bin/" "/home/iniz/bin/" "/usr/local/bin/" "/home/iniz/go/bin/" "/usr/lib/go/bin/" "/home/iniz/.linuxbrew/bin/" "/home/iniz/node_modules/tern/bin/" "/usr/lib/emacs/24.5/x86_64-linux-gnu/" ""))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  )
