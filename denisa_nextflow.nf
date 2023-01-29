#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process sayHello {
  input: 
    val x
  output:
    stdout
  script:
    """
    sleep 100; echo '$x Unicle 2023!'; 
    """
}

workflow {
  Channel.of('Hello') | sayHello | view
}
