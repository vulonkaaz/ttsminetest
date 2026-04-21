# TTS client mod for minetest

This mod is quite janky and need special tweaking for it to work

## How it works

- a CSM logs every chat message into stderr
- stderr get piped into a shell script
- the shell script send the chat messages to espeak (along with a randomized pitch based on the username)

## Requirement

- a somewhat POSIX compliant system, linux works, i guess BSD and macOS work too, do not ask me how to make this work on windows
- espeak (or any TTS engine that can read from stdin, modify the shell script if you use another one)

## How to use

- copy the tts folder to your clientmods folder & turn on the client side mods
- launch minetest with `minetest 2>&1 >/dev/null | ./tts.sh` (replace minetest and tts.sh with the actual paths of those files on your system)

## Support and troubleshooting

Read the source code to understand what the hell is going on, this software is offered with no support nor warranty
