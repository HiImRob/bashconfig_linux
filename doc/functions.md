# Bash Functions and Aliases

> Functions

- Create a new directory and enter it

`mkd {{folder}}`

- Change working directory to the top-most Finder window location

`cdf`
`cdf {{folder}}`

- Create a .tar.gz archive, using `zopfli`, `pigz` or `gzip` for compression

`targz {{files}}`

- Determine size of a file or total size of a directory

`fs`
`fs {{folder}}`

- Use Git’s colored diff when available

`diff {{file}} {{other file}}`

- Create a data URL from a file

`dataurl {{file}}`

- Start an HTTP server from a directory, optionally specifying the port

`server`
`server {{port}}`

- Start a PHP server from a directory, optionally specifying the port (Requires PHP 5.4.0+.)

`phpserver`
`phpserver {{port}}`

- Compare original and gzipped file size

`gz {{file}}`

- Syntax-highlight JSON strings or files

`json '{"foo":42}'`
`echo '{"foo":42}' | json`

- Run `dig` and display the most useful info

`digga {{url}}`

- UTF-8-encode a string of Unicode symbols

`escape {{string}}`

- Show all the names (CNs and SANs) listed in the SSL certificate for a given domain

`getcertnames {{domain}}`

- `v` with no arguments opens the current directory in Vim, otherwise opens the given location

`v`
`v {{file}}`
`v {{folder}}`

- `o` with no arguments opens the current directory, otherwise opens the given location

`o`
`o {{file}}`
`o {{folder}}`

- `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring the `.git` directory, listing directories first. The output gets piped into `less` with options to preserve color and line numbers, unless the output is small enough for one screen.

`tre`
`tre {{folder}}`

- Switch to last recent folder

`cd -`

- Show most recent `cd` folders

`cd --`

- Switch to a specific folder

`cd -{{number}}`


> Aliases


- Easier navigation: .., ..., ...., ....., ~ and -

`..="cd .."`
`...="cd ../.."`
`....="cd ../../.."`
`.....="cd ../../../.."`

- Shortcuts

`d="cd ~/Documents/Dropbox"`
`dl="cd ~/Downloads"`
`dt="cd ~/Desktop"`
`p="cd ~/Projects"`

- List all files colorized in long format

`l="ls -lF ${colorflag}"`

- List all files colorized in long format, including dot files

`ll="ls -laF ${colorflag}"`

- List only directories

`lsd="ls -lF ${colorflag} | grep --color=never '^d'"`

- Always use color output for `ls`

`ls="command ls ${colorflag}"`

- Get week number
`week='date +%V'`

- Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages

`update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'`

- Google Chrome

`chrome='/Applications/Google\Chrome.app/Contents/MacOS/Google\ Chrome'`

- Get own public IP

`ip`

- Get local IP

`localip`

- Get all IPs in use

`ips`

- Show active network interfaces
`ifactive`

- Clean up LaunchServices to remove duplicates in the “Open With” menu

`lscleanup`

- JavaScriptCore REPL

`jsc`

- Recursively delete `.DS_Store` files

`dscleanup`

- Empty the Trash on all mounted volumes and the main HDD. Also, clear Apple’s System Logs to improve shell startup speed. Finally, clear download history from quarantine. https://mths.be/bum

`emptytrash`

- Show/hide hidden files in Finder

`show`
`hide`

- Hide/show all desktop icons (useful when presenting)

`hidedesktop`
`showdesktop`

- URL-encode strings

`urlencode {{string}}`

- Merge PDF files

`mergepdf -o output.pdf input{1,2,3}.pdf`

- Disable Spotlight

`spotoff`

- Enable Spotlight

`spoton`

- PlistBuddy alias, because sometimes `defaults` just doesn’t cut it

`plistbuddy`

- Airport CLI alias

`airport`

- Intuitive map function. For example, to list all directories that contain a certain file:

`find . -name .gitattributes | map dirname`

- Stuff I never really use but cannot delete either because of http://xkcd.com/530/

`stfu`
`pumpitup`

- Lock the screen (when going AFK)

`afk`

- Print each PATH entry on a separate line

`path`

- Basic `cat`function because `cat` is colored now

`cat0 {{files}}`

- Open QuickLook in terminal

`ql {{files}}`

- Open CLI Youtube (mpsyt)

`yt`

> Helpers

- Show TLDR Page for own functions

`hfuns`

- Show TLDR Page for own docker functions

`hdocker`
