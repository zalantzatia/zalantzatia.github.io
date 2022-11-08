(load-theme 'wombat)
(setq inhibit-startup-screen t)

(defun ireki (tex)
  (setq-default major-mode 'LaTeX-mode)
  (find-file tex)
  ; sudo apt install aspell-en aspell-eu aspell-es
  (setq ispell-program-name "aspell")
  (setq ispell-extra-args '("--sug-mode=ultra" "--lang=eu"))
  (flyspell-mode 1)
  (flymake-mode 1))

;sudo apt-get install chktex
(defun flymake-get-tex-args (file-name)
    (list "chktex" (list "-q" "-v0" file-name)))

(setq lantokia "~/git_lanak/zalantzatia/")

(ireki (concat lantokia "20221104_inky/main.tex"))
(ireki (concat lantokia "20221105_mirtila/main.tex"))
