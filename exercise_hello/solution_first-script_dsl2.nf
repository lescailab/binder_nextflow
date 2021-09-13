#!/usr/bin/env nextflow

nextflow.enable.dsl=2

params.input  = './files/content.txt'
input_ch = Channel.fromPath(params.input)

process splitLines {

    input:
    path file

    output:
    file 'line_*'

    """
    count=0
    while read -r line
    do
    ((count++))
    echo \$line >line_\$count
    done <$file
    """
}

process getLast {

    input:
    path file

    output:
    stdout

    """
    cat $file | awk '{print \$NF}'
    """
}



workflow {

    lines_ch = splitLines(input_ch)
    results_ch = getLast(lines_ch)
    results_ch.view()

}