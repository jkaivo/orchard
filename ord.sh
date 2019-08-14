if [ $# -ne 1 ] || [ ${#1} -ne 1 ]; then
	printf 'usage: %s char\n' "$0"
	exit 1
fi

printf '%d\n' "\"$1\""
