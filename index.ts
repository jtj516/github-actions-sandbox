import * as core from '@actions/core';
import { exec } from '@actions/exec'


async function run() {
    let scriptArg = core.getInput('scripts')
    if (scriptArg === '') {
        core.setFailed("no scripts selected")
        return
    }
    const scripts: string[] = scriptArg.split(',')
    scripts.forEach(script => {
        runScript(script)
    });
}

function runScript(operation: string) {
    core.info(`executing: ${ operation }`)
    try { 
        exec(operation)
    } 
    catch (error) {
        if (error instanceof(Error)) {
            core.setFailed(error.message)
        } else {
            throw(error)
        }
    }
}

run()