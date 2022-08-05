import * as core from '@actions/core';
import {exec } from '@actions/exec'

const stages : string[] = ['npm install','npm run test','npm run lint','npm run build']

async function run() {
    stages.forEach(stage => {
        runTask(stage)
    });    
}

function runTask(operation: string) {
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