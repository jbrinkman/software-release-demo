npm i -D @commitlint/{config-conventional,cli}


commitlint.config.js
module.exports = {
    extends: ['@commitlint/config-conventional']
}

npm i -D husky

npm i -D is-ci

package.json
prepare: "is-ci || husky install"

npm run prepare

npx husky add .husky/pre-commit "npm test"

npx husky add .husky/commit-msg "npx --no -- commitlint --edit ${1}"

husky.sh
#!/usr/bin/env sh
. "$(dirname -- "$0")/_/husky.sh"

npx --no -- commitlint --edit ${1}

npm i -D semantic-release

npm i -D @semantic-release/{changelog,git}

copy .releaserc.json into project

copy .github/workflows/release.yml into project
