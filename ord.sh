format=d

while getopts xdo opt; do
	case $opt in
	x|d|o)	format=${opt};;
	?)	exit 1;;
	esac
done

shift $((OPTIND - 1))

if [ $# -ne 1 ] || [ ${#1} -ne 1 ]; then
	printf 'usage: %s [-d|-x|-o] char\n' "$0"
	printf '\t-d print number in decimal (default)\n'
	printf '\t-x print number in hexadecimal\n'
	printf '\t-o print number in octal\n'
	exit 1
fi

printf "%${format}\n" "\"$1\""
