if [ $# -eq 0 ]; then
	printf 'usage: %s number...\n' "$0"
	exit 1
fi

while [ $# -gt 0 ]; do
	printf '%b' "\\0$(printf '%o' "$1")"
	shift
done
printf '\n'
