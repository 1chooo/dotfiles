# My Shell Setting

```shell
my-dotfile
├── vim
│   └── bundle/
├── git
│   └── setup.sh
├── .shellScripts
│   └── runc
├── oh-my-zsh/
└── zsh
```


- [Vim](#vim)
- [oh-my-zsh](#oh-my-zsh)

## Vim

### press `<f5>` to execute the code

Add this block of code in your `~/.vimrc`.
```vim
nmap <F5> :call CompileRun()<CR>
func! CompileRun()
  exec "w"
if &filetype == 'python'
  exec "!time python3 %"
elseif &filetype == 'java'
  exec "!javac %"
  exec "!time java %<"
elseif &filetype == 'cpp'
	exec "!runc %"
elseif &filetype == 'c'
	exec "!runc %"
elseif &filetype == 'sh'
  :!time bash %
endif
  endfunc
```

## oh-my-zsh

## Shell Scripts

### Compile c/cpp
```SHELL
#!/bin/zsh

if [[ "$1" == *.cpp ]]; then
  output="${1%.cpp}"
elif [[ "$1" == *.c ]]; then
	output="${1%.c}"
else
  output="$1"
fi

gcc "$output".c -o "$output".out 2> /dev/null || clang++ -std=c++17 -stdlib=libc++ "$output".cpp -o "$output".out 2> /dev/null

"$PWD/$output".out

exit 0
```