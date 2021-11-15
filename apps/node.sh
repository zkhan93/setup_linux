#!/bin/bash
VERSION=curl https://github.com/nvm-sh/nvm/releases/latest | grep -o "v[.0-9]\+"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$VERSION/install.sh | bash
\. "$NVM_DIR/nvm.sh"
nvm use --lts