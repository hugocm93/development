#vars
set V3O2_PATH="~/v3o2"
setenv MODE "release" #debug ou release ou gdb ou unit_tests

#Programs
alias cppcheck '/home/t/tecgraf/prod/app/cq/tools/cppcheck/cppcheck --enable=all --suppress=unreadVariable     \\
-i$V3O2_PATH/objectCalculator/parser/ -i$V3O2_PATH/interface/IupGtkPopup.cpp -i$V3O2_PATH/recipes_c/NRUTIL.c   \\
-i$V3O2_PATH --force --quiet '
alias eclipse     "scl enable devtoolset-2 'eclipse -vmargs -Xmx8192M -Xms8192M'"
alias ctags      '~/bin/ctags-5.8/ctags'
alias matrix      '~/bin/cmatrix-1.2a/cmatrix -ba'
alias telegram    '~/bin/tg/bin/telegram-cli -N'
alias uncrustify  '~/bin/uncrustify.sh'
alias val         '~/bin/val.sh'
alias all         '~/bin/all.sh'
alias deboas      '~/scripts/development/equipe3/commit_deboas.sh -p=~/v3o2_folders/v3o2/doc/CodeStandard/CodingStyle/uncrustify.cfg' 
alias glade       '/home/p/libs/libsgtk_64/bin/glade-3'
alias dirSize     'du -csh'
alias vimDiff     'git diff | vim -R -'
alias netbeans    '~/netbeans-8.2/bin/netbeans -J-Dswing.aatext=true \\
-J-Dawt.useSystemAAFontSettings=on -J-Xmx10G --locale en:US &'
alias sconsify    '~/bin/sconsify/sconsify -username="12163089012" -open-browser-cmd firefox'
alias editCurrent 'vim `git ls-files -m | xargs`'
alias git '/opt/rh/devtoolset-2/root/usr/bin/git'

#Directories
alias gov3o2    'cd $V3O2_PATH'
alias gosource  'cd $V3O2_PATH/src'
alias gobuild   'cd $V3O2_PATH/build'
alias check     'echo $MODE ; ls -la ~/v3o2'

#v3o2 developing
alias devcomp   'eval "if ($MODE == "debug") then         \\
			~/bin/devtool.sh "~/bin/compileV3o2.sh"       \\
		else                                              \\
			~/bin/devtool.sh "~/bin/compileV3o2R.sh"      \\
		endif"'
alias gencmake   'eval "if ($MODE == "debug") then                         \\
            ~/v3o2/build/gen_cmake.sh local ; ~/v3o2/build/make.sh debug   \\
		else                                                               \\
            ~/v3o2/build/gen_cmake.sh local ; ~/v3o2/build/make.sh release \\
		endif"'
alias execute   'eval "if ($MODE == "gdb") then           \\
			~/bin/devtool.sh "~/bin/gdbMode.sh"           \\
		else                                              \\
			$V3O2_PATH/build/v3o2.sh $MODE                \\
		endif"'
alias fast   'eval "if ($MODE == "gdb") then              \\
			$V3O2_PATH/build/make.sh debug -j10           \\
		else                                              \\
			$V3O2_PATH/build/make.sh $MODE -j10           \\
		endif"'
alias debug       'setenv MODE debug ; check'
alias release     'setenv MODE release ; check'
alias gdbMode     'setenv MODE gdb ; check'
alias utest       'setenv MODE unit_tests ; check'
alias update      'cd ~/v3o2/ ; git pull ; check'
alias genTags     'cd ~/v3o2/src ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ . ;          \\
				   cd ~/v3o2/lib ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ . ;          \\
cd ~/v3o2/prototipos/DiametrosEstruturasSegmentadas/ ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ . ;          \\
				  cd ~/v3o2/dependencies ; ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++ . ; \\
				  cd ~/v3o2/'
alias run         'fast ; execute'

#v3o2 symbolic links
alias repo1    'ln -sfn ~/v3o2_folders/repo1/v3o2         ~/v3o2 ; check'
alias repo2    'ln -sfn ~/v3o2_folders/repo2/v3o2         ~/v3o2 ; check'

#Adding some programs to the path
setenv LD_LIBRARY_PATH
setenv CPATH
setenv MANPATH
source ~/bin/tools/tools.sh ~/bin/tools/vim-8.1
source ~/bin/tools/tools.sh ~/bin/tools/python-3.5.2
source ~/bin/tools/tools.sh ~/bin/tools/python-2.7.12
source ~/bin/tools/tools.sh ~/bin/tools/usr
setenv LD_LIBRARY_PATH ~/bin/sconsify:$LD_LIBRARY_PATH
setenv LD_LIBRARY_PATH /nethome/p/INT/CarnacGeo-44_/lib:$LD_LIBRARY_PATH
setenv LD_LIBRARY_PATH ~/v3o2/dependencies/ext/qt_Linux64e6/lib:$LD_LIBRARY_PATH
#setenv PATH /nethome/p/boost-build:$PATH
setenv MANPATH ~/man/share/man:$MANPATH
setenv SVN_EDITOR vim
setenv EDITOR /local/hmachado/bin/tools/vim-8.1/bin/vim
#setenv BOOST_BUILD_PATH /home/p/boost-build/

#Default directory for shell
cd ~/

#Grep Settings
setenv GREP_OPTIONS "--exclude=*.svn-base --exclude=*.netbeans-base --exclude=*.tmp --exclude=*/.svn/* --exclude=tags"
alias grep 'grep --color=auto'

#gcc8.2.0
#source ~/devtoolset/dev/v3o2-toolset-gcc-8.2.0/enable.csh
