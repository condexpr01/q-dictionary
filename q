#!/usr/bin/sh

prefix="${PREFIX:-/usr}"
wordlist="$prefix/share/q-dictionary/wordlist"

if ! [ -f "$wordlist" ]; then
	exit 1
fi

search(){

	if ! command -v grep 2>&1 1>/dev/null; then
		printf "fatal: grep command not found.\n"
	else

		for PCRE in "$@"; do
			printf "[===== PCRE: %s =====]\n" "$PCRE"

			grep -P "$PCRE" $wordlist
		done
	fi
}

if [ -z "$1" ]; then
	printf "%s\n" "$wordlist"
else
	search "$@"
fi

