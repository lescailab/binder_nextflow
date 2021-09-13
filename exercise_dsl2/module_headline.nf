process headLine {

    input:
    file content

    output:
    stdout emit: results

    script:
    """
    head -n 1 $content
    """

}