######################################################

# Functions

######################################################

alias edbf="vim ~/.bash_functions"

ve ()
{
	help="Command Syntax:\nve -flag <file-name>\nve -p : python3\nve --cpp : cpp\nve -c : c"

	case $1 in
		"-h")
			echo -e $help
			;;
		"-p")
			clear && vim $2 && python3 $2
			;;
		"--cpp")
			clear && vim $2 && g++ $2 && ./a.out
			;;
		"-c")
			clear && vim $2 && gcc $2 && ./a.out
			;;
		*)
			echo -e $help
			;;
	esac
}

# List of functions
functions=("ve")

# Un-Export all custom functions to prevent remaining functions
for str in ${functions[@]}; do
	unset $str
done

# Export all custom functions
for str in ${functions[@]}; do
	export $str
done
