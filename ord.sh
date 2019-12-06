format=d

while getopts xdo opt; do
	case $opt in
	x|d|o)	format=${opt};;
	?)	exit 1;;
	esac
done

shift $((OPTIND - 1))

if [ $# -eq 0 ]; then
	printf 'usage: %s [-d|-x|-o] char\n' "$0"
	printf '\t-d print number in decimal (default)\n'
	printf '\t-x print number in hexadecimal\n'
	printf '\t-o print number in octal\n'
	exit 1
fi

string="$@"
while [ ${#string} -gt 0 ]; do
	printf "%${format}" "\"${string}\""
	string=${string#?}
	if [ ${#string} -gt 0 ]; then
		printf ' '
	else
		printf '\n'
	fi
done
