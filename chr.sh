if [ $# -ne 1 ]; then
	printf 'usage: %s number\n' "$0"
	exit 1
fi

printf '%b\n' "\\0$(printf '%o' "$1")"
