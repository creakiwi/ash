ash
===

Ash for "Abstract Bourne Shell" (don't ask), provides a more user-friendly way to use Bourne Shell with some useful methods. It's not like rewriting the Shell, but more like adding an abstraction layer, using some coding standards.

Don't get me wrong, all functions used here are somehow implemented by Bourne Shell. However, I think this :

    lowercase ${myvar}
    echo ${myvar_r}

Is more readable than :

    myvar=`echo ${myvar} | awk '{print tolower($0)}'`

And this :

    is_dir ${some_path}
    if [ ${is_dir_r} -eq 1 ]
    then
        echo "It's a directory"
    fi

Is more readable than :

    if [ -d ${some_path} ]
    then
        echo "It's a directory"
    fi

Yeah, I know, it adds some verbosity, and lines of code, but it's more user friendly.

Currently, this library is not well supplied, but I want to make it more powerfull. In the first example, you can see that I'm using awk to lowercase a string. What happens if the environment does not have awk ? For now, the script yells that "fuck you" install "awk". But soon, I want to provide some ordered methods to accomplish an action, without asking the end-user of the library. Yeah like an abstraction layer !
