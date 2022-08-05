[![CI](https://github.com/peolivier/learnGithubActions_ReactApp/actions/workflows/ci.yml/badge.svg)](https://github.com/peolivier/learnGithubActions_ReactApp/actions/workflows/ci.yml)
[![CI](https://github.com/peolivier/learnGithubActions_ReactApp/actions/workflows/ci.yml/badge.svg?branch=develop&event=push)](https://github.com/peolivier/learnGithubActions_ReactApp/actions/workflows/ci.yml)

# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

# Notes - learnGithubActions_ReactApp

## Learning References

[The Complete GitHub Actions & Workflows Guide](https://www.udemy.com/share/102DqF/)

```sh
# https://create-react-app.dev/docs/getting-started
npx create-react-app react-app

# npm test in Pipelines/CI (https://create-react-app.dev/docs/running-tests/#on-your-own-environment)
set CI=true && npm test             # (cmd.exe) windows
($env:CI = "true") -and (npm test)  # PowerShell (Windows)
CI=true npm test                    # Linux, macOS (Bash)
docker run -e CI=true [myImage] npm run test # Docker

# Prettier (https://prettier.io/docs/en/install.html)
npm install --save-dev --save-exact prettier

npx prettier --check "**/*.{js,yml,yaml,css,scss,md}"
npx prettier --write "**/*.{js,yml,yaml,css,scss,md}"

# Surge (https://surge.sh/ -- Static web publishing for Front-End Developers)
npm install -g surge && surge
#---equivalent to---
npx surge
```

### Github - Special Secrets
Secrest at project level - `https://github.com/<user>/<repo>/settings/secrets/actions`  
`ACTIONS_STEP_DEBUG = True` will enalbe DEBUG logging  

### Surge - Quick GetStarted




```sh
npm install -g surge

#Create or login to your account
# * Enter Email and Password
# * specify the "Build" path of your project
# * define your domain name (or keep default)
surge

# See current projects with surge
surge list

# Github CI - Create Secrets for username/token
surge whoami    # print your used Email (secrets.SURGE_LOGIN)
surge token     # print a token to use (secrets.SURGE_TOKEN)
```

# Conventional Commits

Conventional Commits - https://www.conventionalcommits.org/en/v1.0.0/  
it following the _**Semantic Versionning**_ (https://semver.org/)

`commit message` structure:

```txt
<type>[optional scope]: <description>

[optional body]

[optional footer]
```

examples:

```txt
fix(cart): change cart endpoint

BREAKING CHANGE: changed cart endpoint

closes issues#12
```

```txt
feat(auth): add Facebook authentication
```

```txt
docs(auth): add auth docs
```

```txt
ci: add new workflow
```

```txt
style: update documentation styles
```

## Package to ensure conventional commits are use

READ DOC at - **https://github.com/conventional-changelog/commitlint**

```sh
#----------------------------------------------------------------------------
# https://github.com/conventional-changelog/commitlint#getting-started
#----------------------------------------------------------------------------
# Install commitlint cli and conventional config
npm install --save-dev @commitlint/{config-conventional,cli}
# For Windows:
npm install --save-dev @commitlint/config-conventional @commitlint/cli

# Configure commitlint to use conventional config
echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

# To lint commits before they are created you can use Husky's commit-msg hook:
# Install Husky v6
npm install husky --save-dev

# Activate hooks (triggering mecanisim)
npx husky install

# Add hook for 'commit-msg'
cat > .husky/commit-msg << EEE
#!/bin/sh
. "\$(dirname "\$0")/_/husky.sh"

npx --no -- commitlint --edit "\${1}"
EEE

# Make hook executable
chmod a+x .husky/commit-msg
```

# Helper tool to do Conventionnal Commits

**https://github.com/commitizen/cz-cli**

```sh
npm install commitizen -g
```

# in the Husky section

```json
// in 'package.json
{
  "name": "react-app",
  "version": "0.1.0",
  "private": true,
  "dependencies": {
    //...
  },
  "scripts": {
    //...
  },
  "husky": {
    "hooks": {
      "prepare-commit-msg": "exec < /dev/tty && npx cz --hook || true"
    }
  }
}
```

# semantic-release

link - https://github.com/semantic-release/semantic-release

```sh
# https://github.com/semantic-release/semantic-release/blob/master/docs/usage/installation.md#installation
npm install --save-dev semantic-release
npx semantic-release # Run locally

# Create a Config file or modify the `package.json`
# https://github.com/semantic-release/semantic-release/blob/master/docs/usage/configuration.md#configuration
touch release.config.js
# then edit...
```

in `package.json`

```json
    {
    ///...
    },
    "release": {
        "branches": ["main"],
        "repositoryUrl": "https://github.com/peolivier/learnGithubActions_ReactApp",
        "plugins": [
            "@semantic-release/commit-analyzer",
            "@semantic-release/release-notes-generator",
            // '@semantic-release/npm', // we already have it
            "@semantic-release/github"
        ]
    },
```

# Slack Message - Get Notify!

https://api.slack.com/


# Creating our own custom actions
Toolkit to help - https://github.com/actions/toolkit

```sh
npm install @actions/github
npm install @actions/core
```


## To compile a NodeJS file with dependencies into a SINGLE file
github - https://github.com/vercel/ncc  
npm - https://www.npmjs.com/package/@vercel/ncc  

```sh
npm install --save-dev @vercel/ncc
npx ncc build .github/actions/hello/index.js -o .github/actions/hello/dist
```