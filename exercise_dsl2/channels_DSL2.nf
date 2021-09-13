nextflow.enable.dsl=2


words_ch = Channel.fromList(['word1', 'word2', 'word3'])

words_ch.view()

words_ch.view{ "the word is $it" }