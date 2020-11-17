apt_install_prerequisite() {
    # Installing pre-requirements
    echo "[$(date +%H:%M:%S)]: Updating and upgrading the apt-package manager"
    apt-get -qq update
    apt-get -y -qq upgrade
    echo "[$(date +%H:%M:%S)]: Finished"
}

install_basic_tool() {
    echo "[$(date +%H:%M:%S)]: Installing vs code"
    apt -y -qq install apt-transport-https
    apt install code # or code-insiders
    echo "[$(date +%H:%M:%S)]: Finished"

    echo "[$(date +%H:%M:%S)]: Installing python3"
    apt- -y -qq install python3
    echo "[$(date +%H:%M:%S)]: Finished"

    echo "[$(date +%H:%M:%S)]: Installing git"
    apt -y -qq install git
    echo "[$(date +%H:%M:%S)]: Finished"

  
    

}

main() {
    apt_install_prerequisite
    install_basic_tool
}

main
exit 0