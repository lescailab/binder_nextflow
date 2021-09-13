nextflow.enable.dsl=2

ch_input = Channel.fromPath('./files/content.txt')

include { headLine } from './module_headline.nf'

workflow {
    headLine(ch_input)
    headLine.out.view()
}