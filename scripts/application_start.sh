#!/bin/bash
sudo chmod -R 777 /opt/express-app

#navigate into our working directory where we have all our github files
cd /opt/express-app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  #loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion 

#install node modules
npm install

#start our node app in background
node app.js > app.out.log 2> app.err.log < /dev/null &