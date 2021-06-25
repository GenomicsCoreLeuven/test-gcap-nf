/* Hello world v3 */

/* Enable Nextflow Domain Specific Language version 2 */
nextflow.enable.dsl=2

// import modules
include { helpMessage; infoMessage } from './help_message'
include { sayHello } from './say_hello'
include { toUpper } from './to_upper'
include { toCowsay } from './to_cowsay'

infoMessage()
if (params.help) {
  helpMessage()
  exit 0
}

/*
 * main script flow info
 */

workflow {
  sayHello(params.greeting, Channel.of('Leuven','Belgium','world'))
  toUpper(sayHello.out) | view
  toCowsay(sayHello.out) | view
}
