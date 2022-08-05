/*
You need to install and run the @
*/
const core = require('@actions/core');
const github = require('@actions/github')

try{
// throw( new Error("some error message")); // will NOT throw action FAIL

  core.debug("debug message");
  core.warning("warning message");
  core.error("error message");

  const name = core.getInput('who-to-greet');
  // core.setSecret('a password that will be masked in log (*****)');
  core.setSecret(name); // when argument is a variable, the use of this variable in logging will be masked
  console.log(`Hello ${name}`);

  const time = new Date();
  core.setOutput("time", time.toTimeString());

  core.startGroup('Logging github object')
  console.log(JSON.stringify(github, null, '\t'));
  core.endGroup();

  core.exportVariable('HELLO', 'hello you there!');
} catch(error){
  // This is how you indicate the action has FAILED
  core.setFailed('dododo');
}
