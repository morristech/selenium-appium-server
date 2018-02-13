namespace src/helper

import UI/Color

getBashVersion() {
    echo `bash -c 'IFS=.; echo "${BASH_VERSINFO[*]: 0:1}"'`
}

getOSType() {
    echo `uname -s`
}

getJavaVersion() {
    echo $(java -version 2>&1 | awk -F '"' '/version/ {print $2}' | sed 's/\(.*\)\.\(.*\)\..*/\1\2/')
}

function killProcess
{
    if pgrep -f $1 &> /dev/null; then
        pkill -f $1 &> /dev/null
    fi;
}
