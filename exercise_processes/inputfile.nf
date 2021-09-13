ch_input = Channel.fromPath('./files/content.txt')

process headLine {

    input:
    file content from ch_input

    output:
    stdout results

    script:
    """
    head -n 1 $content
    """

}

results.view()