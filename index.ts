import * as core from '@actions/core';
import { exec } from '@actions/exec'


async function run() {
    const scripts: string[] = core.getInput('scripts')!.split(',')
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