My dotfiles
-----------

installation:
"""""""""""""

1. Clone the repository

`git clone https://github.com/rm--/dotfiles`

2. Backup your files and install my dots with

`make install-dots`

3. (if you don't like it and want you old dots back)

`make restore`


including dots for:
"""""""""""""""""""

* bash
* git
* mercurial
* vim
* zsh


dependencies
""""""""""""

mercurial
+++++++++

* hgprompt needs `prompt.py`_ 
* hgflow needs `hgflow.py`_ 

.. _prompt.py: http://bitbucket.org/sjl/hg-prompt/
.. _hgflow.py: https://bitbucket.org/yujiewu/hgflow/


not rly dot: ST2 plugins I like:
""""""""""""""""""""""""""""""""

* `PackageControl`_ 
* `DashDoc`_ 
* `SublimePrettyJson`_
* `editorconfig-sublime`_ 
* `sublime-rst-completion`_ 
* `Sublime Text 2/3 Markdown Preview`_ 
* `Spacegray Color theme`_

.. _Spacegray Color theme: https://github.com/kkga/spacegray
.. _PackageControl: https://packagecontrol.io/
.. _DashDoc: https://github.com/farcaller/DashDoc
.. _SublimePrettyJson: https://github.com/dzhibas/SublimePrettyJson
.. _editorconfig-sublime: https://github.com/sindresorhus/editorconfig-sublime
.. _`sublime-rst-completion`: https://github.com/mgaitan/sublime-rst-completion
.. _Sublime Text 2/3 Markdown Preview: https://github.com/revolunet/sublimetext-markdown-preview


inspired by dotfiles of `Andreas Linz`_, `Mark Nichols`_,  `Markus Zapke-Gründemann`_ and `Steve Losh`_.

.. _Andreas Linz: https://github.com/KLINGTdotNET
.. _Mark Nichols: https://github.com/zanshin
.. _Markus Zapke-Gründemann: https://bitbucket.org/keimlink 
.. _Steve Losh: https://github.com/sjl/


**License: MIT, for details see LICENSE.txt**



**still in development...**


TODOs:
++++++

- test all files in different environments (Debian, Ubuntu, Mac OS X)
- improve bashrc config
- check brew settings and tools
- add installation routine
- improve vimrc
- add tigrc (man tigrc)
- adding htoprc?
- add autocompletion (git, Django)
- add preview with tty2git
- add new sublime plugins???
- add ghc-pkg-reset/-clean... for mac!!!
- ignore case on zsh
