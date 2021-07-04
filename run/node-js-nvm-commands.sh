// check version
node -v || node --version

// list installed versions of node (via nvm)
nvm ls

// list lastet remote versions 
nvm ls-remote | grep -i 'latest'

// list lastet remote v12 versions 
nvm ls-remote | grep -i 'v12'

// install specific version of node
nvm install 6.9.2

// set default version of node
nvm alias default 6.9.2

// switch version of node
nvm use 6.9.1

