(doom! :input
       layout            ; auie,ctsrnm is the superior home row

       :completion
       company           ; the ultimate code completion backend
       vertico           ; the search engine of the future

       :ui
       deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       (emoji +unicode)  ; 🙂
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
                                        ;hydra
       indent-guides     ; highlighted indent columns
       ligatures         ; ligatures and symbols to make your code pretty again
       minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink cursor line after big motions
       ophints           ; highlight the region an operation acts on
       (popup +defaults)  ; tame sudden yet inevitable temporary windows
       tabs              ; a tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces
       zen               ; distraction-free coding or writing

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       format            ; automated prettiness
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       ibuffer           ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       spell               ; tasing you for misspelling mispelling
       grammar           ; tasing grammar mistake every you make

       :tools
                                        ;ansible
       debugger          ; FIXME stepping through code, to help you add bugs
       direnv
       ;ein               ; tame Jupyter notebooks with emacs

       (eval +overlay)     ; run code, run (also, repls)

       lookup              ; navigate your code and its documentation

       lsp

       magit             ; a git porcelain for Emacs

       prodigy           ; FIXME managing external services & code builders

       rgb               ; creating color strings
       terraform         ; infrastructure as code

       :os
       tty               ; improve the terminal Emacs experience

       :lang
       ;;(cc +lsp)              ; C > C++ == 1
       (docker-langserver --stdio)

       emacs-lisp        ; drown in parentheses

       ;;(go +lsp)         ; the hipster dialect

       json              ; At least it ain't XML

       ;;(java +lsp) ; the poster child for carpal tunnel syndrome
       ;;kotlin            ; a better, slicker Java(Script)
       (javascript        ; all(hope(abandon(ye(who(enter(here))))))
        +lsp
        )

       markdown          ; writing docs for people to ignore

       org               ; organize your plain life in plain text

       (python
        +lsp
        +pyenv
        +poetry
        +pyright
        )
       ;;rest              ; Emacs as a REST client
       (nginx
        +lsp)

       (rust
        +lsp)              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()

       sh                ; she sells {ba,z,fi}sh shells on the C xor

       (web +lsp)        ; the tubes

       yaml              ; JSON, but readable

       :app
                                        ;calendar
                                        ;everywhere        ; *leave* Emacs!? You must be joking

       :config
       literate
       (default +bindings +smartparens)

       )
