(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))













;;apo tis rythmiseis ths efarmoghs:
;;org-tempo
;;font(consolas), theme(monokai-pro)
;;alla paketa:
;;auctex, company-auctex
;;teleutaio bullet gia org-bullets: ►
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (gruvbox-dark-medium)))
 '(custom-safe-themes
   (quote
    ("83e0376b5df8d6a3fbdfffb9fb0e8cf41a11799d9471293a810deb7586c131e6" "7661b762556018a44a29477b84757994d8386d6edee909409fabe0631952dad9" "24168c7e083ca0bbc87c68d3139ef39f072488703dcdd82343b8cab71c0f62a7" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" default)))
 '(doc-view-continuous t)
 '(doc-view-pdf->png-converter-function (quote doc-view-pdf->png-converter-ghostscript))
 '(org-bullets-bullet-list (quote ("◉" "○" "✸" "►")))
 '(org-modules
   (quote
    (ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m org-tempo)))
 '(package-selected-packages
   (quote
    (centered-cursor-mode gruvbox-theme calfw-org latex-preview-pane auctex company-auctex auto-dictionary auctex-latexmk pdf-tools expand-region mark-multiple swiper popup-kill-ring dmenu diminish spaceline company dashboard rainbow-delimiters switch-window rainbow-mode avy which-key use-package org-bullets monokai-pro-theme ido-vertical-mode helm-smex beacon)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#282828")))
 '(preview-gs-options
   (quote
    ("-q" "-dDELAYSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(vhdl-compiler "GHDL")
 '(vhdl-compiler-alist
   (quote
    (("ADVance MS" "vacom" "" "make" "-f \\1" nil "valib \\1; vamap \\2 \\1" "./" "work/" "Makefile" "adms"
      ("^\\s-+\\([0-9]+\\):\\s-+" nil 1 nil)
      ("^Compiling file \\(.+\\)" 1)
      ("ENTI/\\1.vif" "ARCH/\\1-\\2.vif" "CONF/\\1.vif" "PACK/\\1.vif" "BODY/\\1.vif" upcase))
     ("Aldec" "vcom" "-work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "work/" "Makefile" "aldec"
      ("^.* ERROR [^:]+: \".*\" \"\\([^ 	
]+\\)\" \\([0-9]+\\) \\([0-9]+\\)" 1 2 3)
      ("" 0)
      nil)
     ("Cadence Leapfrog" "cv" "-work \\1 -file" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "leapfrog"
      ("^duluth: \\*E,[0-9]+ (\\([^ 	
]+\\),\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1/entity" "\\2/\\1" "\\1/configuration" "\\1/package" "\\1/body" downcase))
     ("Cadence NC" "ncvhdl" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ncvhdl"
      ("^ncvhdl_p: \\*E,\\w+ (\\([^ 	
]+\\),\\([0-9]+\\)|\\([0-9]+\\)):" 1 2 3)
      ("" 0)
      ("\\1/entity/pc.db" "\\2/\\1/pc.db" "\\1/configuration/pc.db" "\\1/package/pc.db" "\\1/body/pc.db" downcase))
     ("GHDL" "ghdl" "-i --ieee=synopsys -fexplicit --mb-comments " "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ghdl"
      ("^ghdl_p: \\*E,\\w+ (\\([^ 	
]+\\),\\([0-9]+\\)|\\([0-9]+\\)):" 1 2 3)
      ("" 0)
      ("\\1/entity" "\\2/\\1" "\\1/configuration" "\\1/package" "\\1/body" downcase))
     ("IBM Compiler" "g2tvc" "-src" "precomp" "\\1" nil "mkdir \\1" "./" "work/" "Makefile" "ibm"
      ("^[0-9]+ COACHDL.*: File: \\([^ 	
]+\\), *line.column: \\([0-9]+\\).\\([0-9]+\\)" 1 2 3)
      (" " 0)
      nil)
     ("Ikos" "analyze" "-l \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "ikos"
      ("^E L\\([0-9]+\\)/C\\([0-9]+\\):" nil 1 2)
      ("^analyze +\\(.+ +\\)*\\(.+\\)$" 2)
      nil)
     ("ModelSim" "vcom" "-93 -work \\1" "make" "-f \\1" nil "vlib \\1; vmap \\2 \\1" "./" "work/" "Makefile" "modelsim"
      ("\\(ERROR:\\|WARNING\\[[0-9]+\\]:\\|\\*\\* Error:\\|\\*\\* Warning: \\[[0-9]+\\]\\| +\\) \\([^ ]+\\)(\\([0-9]+\\)):" 2 3 nil)
      ("" 0)
      ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase))
     ("LEDA ProVHDL" "provhdl" "-w \\1 -f" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "provhdl"
      ("^\\([^ 	
:]+\\):\\([0-9]+\\): " 1 2 nil)
      ("" 0)
      ("ENTI/\\1.vif" "ARCH/\\1-\\2.vif" "CONF/\\1.vif" "PACK/\\1.vif" "BODY/BODY-\\1.vif" upcase))
     ("Quartus" "make" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "quartus"
      ("^\\(Error\\|Warning\\): .* \\([^ 	
]+\\)(\\([0-9]+\\))" 2 3 nil)
      ("" 0)
      nil)
     ("QuickHDL" "qvhcom" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "quickhdl"
      ("^\\(ERROR\\|WARNING\\)[^:]*: \\([^ 	
]+\\)(\\([0-9]+\\)):" 2 3 nil)
      ("" 0)
      ("\\1/_primary.dat" "\\2/\\1.dat" "\\1/_primary.dat" "\\1/_primary.dat" "\\1/body.dat" downcase))
     ("Savant" "scram" "-publish-cc -design-library-name \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work._savant_lib/" "Makefile" "savant"
      ("^\\([^ 	
:]+\\):\\([0-9]+\\): " 1 2 nil)
      ("" 0)
      ("\\1_entity.vhdl" "\\2_secondary_units._savant_lib/\\2_\\1.vhdl" "\\1_config.vhdl" "\\1_package.vhdl" "\\1_secondary_units._savant_lib/\\1_package_body.vhdl" downcase))
     ("Simili" "vhdlp" "-work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "simili"
      ("^\\(Error\\|Warning\\): \\w+: \\([^ 	
]+\\): (line \\([0-9]+\\)): " 2 3 nil)
      ("" 0)
      ("\\1/prim.var" "\\2/_\\1.var" "\\1/prim.var" "\\1/prim.var" "\\1/_body.var" downcase))
     ("Speedwave" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "speedwave"
      ("^ *ERROR\\[[0-9]+]::File \\([^ 	
]+\\) Line \\([0-9]+\\):" 1 2 nil)
      ("" 0)
      nil)
     ("Synopsys" "vhdlan" "-nc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys"
      ("^\\*\\*Error: vhdlan,[0-9]+ \\([^ 	
]+\\)(\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1.sim" "\\2__\\1.sim" "\\1.sim" "\\1.sim" "\\1__.sim" upcase))
     ("Synopsys Design Compiler" "vhdlan" "-nc -spc -work \\1" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synopsys_dc"
      ("^\\*\\*Error: vhdlan,[0-9]+ \\([^ 	
]+\\)(\\([0-9]+\\)):" 1 2 nil)
      ("" 0)
      ("\\1.syn" "\\2__\\1.syn" "\\1.syn" "\\1.syn" "\\1__.syn" upcase))
     ("Synplify" "n/a" "n/a" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "synplify"
      ("^@[EWN]:\"\\([^ 	
]+\\)\":\\([0-9]+\\):\\([0-9]+\\):" 1 2 3)
      ("" 0)
      nil)
     ("Vantage" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "vantage"
      ("^\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" nil 1 nil)
      ("^ *Compiling \"\\(.+\\)\" " 1)
      nil)
     ("VeriBest" "vc" "vhdl" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "veribest"
      ("^ +\\([0-9]+\\): +[^ ]" nil 1 nil)
      ("" 0)
      nil)
     ("Viewlogic" "analyze" "-libfile vsslib.ini -src" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "viewlogic"
      ("^\\*\\*Error: LINE \\([0-9]+\\) \\*\\*\\*" nil 1 nil)
      ("^ *Compiling \"\\(.+\\)\" " 1)
      nil)
     ("Xilinx XST" "xflow" "" "make" "-f \\1" nil "mkdir \\1" "./" "work/" "Makefile" "xilinx"
      ("^ERROR:HDLParsers:[0-9]+ - \"\\([^ 	
]+\\)\" Line \\([0-9]+\\)\\." 1 2 nil)
      ("" 0)
      nil))))
 '(vhdl-upper-case-keywords t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d2a2e" :foreground "#fcfcfa" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "APPL" :family "Fira Code")))))
