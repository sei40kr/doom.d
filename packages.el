;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; This is where you install packages, by declaring them with the `package!'
;; macro, then running 'doom refresh' on the command line. You'll need to
;; restart Emacs for your changes to take effect! Or at least, run M-x
;; `doom/reload'.
;;
;; WARNING: Don't disable core packages listed in ~/.emacs.d/core/packages.el.
;; Doom requires these, and disabling them may have terrible side effects.
;;
;; Here are a couple examples:


;; All of Doom's packages are pinned to a specific commit, and updated from
;; release to release. To un-pin all packages and live on the edge, do:
;(setq doom-pinned-packages nil)

;; ...but to unpin a single package:
;(package! pinned-package :pin nil)


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)
(package! expand-region :pin "0fa7c2d349")
(package! package-lint :pin "05596996286089acc7693b700c7c31780439e39f")
(package! vimrc-mode :pin "13bc150a87")

;; To install a package directly from a particular repo, you'll need to specify
;; a `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))
(package! atcoder-problems :recipe (:local-repo "repos/atcoder-problems"))
(package! atcoder-tools
  :recipe (:local-repo "repos/atcoder-tools"))
(package! competitive-programming-snippets
  :recipe (:local-repo "repos/competitive-programming-snippets"
           :files (:defaults "snippets")))
(package! gitignore-snippets
  :recipe (:local-repo "repos/gitignore-snippets"
           :files (:defaults "snippets")))
(package! kaggle :recipe (:local-repo "repos/kaggle"))
(package! license-snippets
  :recipe (:local-repo "repos/license-snippets"
           :files (:defaults "snippets")))

;; If you'd like to disable a package included with Doom, for whatever reason,
;; you can do so here with the `:disable' property:
;(package! builtin-package :disable t)
(package! ddskk :disable t)
(package! evil-markdown :disable t)
(package! osx-trash :disable t)
(package! pangu-spacing :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))
(package! emacsql-sqlite :built-in t)
(package! vterm :built-in t)
(package! zmq :built-in t)

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))
