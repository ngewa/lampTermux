htdocs() {
  echo -e "
  ╭───────────────────────────────────────╮
  │  ${COG} Creating htdocs directory on HOME  │
  ╰───────────────────────────────────────╯
  "

  start_spinner "· Creating ${COLOR_WARNING}/home/htdocs${COLOR_DEFAULT}"
  sleep 2s

    if [[ -d $HOME/htdocs ]]; then
        echo "<?php phpinfo(); ?>" >> $HOME/htdocs/index.php
        stop_spinner $?
    else
        mkdir $HOME/htdocs
        echo "<?php phpinfo(); ?>" >> $HOME/htdocs/index.php
        stop_spinner $?
    fi
}