# https://bcb.github.io/python/mac-repl-readline
# Add the following to ~/.bash_profile
# export PYTHONSTARTUP=~/.pythonstartup.py
def main():
    try:
        import atexit
        import os
        import platform
        import readline
        import rlcompleter  # needs for completion
    except ImportError as exception:
        print("Shell Enhancement module problem: {0}".format(exception))
    else:
        readline.parse_and_bind("tab: complete")

        history_file = os.path.join(os.environ['HOME'], '.python_history')
        if os.path.isfile(history_file):
            readline.read_history_file(history_file)
        else:
            open(history_file, "a").close()
        atexit.register(readline.write_history_file, history_file)


def paste():
    import textwrap, sys
    exec(textwrap.dedent(sys.stdin.read()), globals())


if __name__ == "__main__":
    main()
    del main
