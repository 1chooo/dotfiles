# Some Shell Scripts

You should add the below content in your `~/.zshrc`
```shell
export PATH="/Users/$USER/.shellScripts/zsh:$PATH"
```

## `runc`: Compile and `C` and `C++`
```shell
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

## Navigate back to the GitHub repository page 
### `ogo`: on the `origin` branch
```shell
#!/bin/zsh

local remote_url=$(git config --get remote.origin.url)

if [[ $remote_url == *"github.com"* ]]; then
# Convert SSH URL to HTTPS URL
remote_url=${remote_url/git@github.com:/https:\/\/github.com\/}
remote_url=${remote_url/\.git/}

# Open the URL in the default browser
open "$remote_url"
else
echo "Remote origin is not a GitHub repository."

fi 
```

### `ogu`: on the `upstream` branch
```shell
#!/bin/zsh

local remote_url=$(git config --get remote.upstream.url)

if [[ $remote_url == *"github.com"* ]]; then
# Convert SSH URL to HTTPS URL
remote_url=${remote_url/git@github.com:/https:\/\/github.com\/}
remote_url=${remote_url/\.git/}

# Open the URL in the default browser
open "$remote_url"
else
echo "Remote origin is not a GitHub repository."
fi
```