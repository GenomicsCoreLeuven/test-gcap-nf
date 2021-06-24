process toCowsay {
  label 'heavyStuff'
  container 'gcr.io/diagnostics-uz/hello_gcap_nf'

  input:
    val s

  output:
    stdout

  script:
  """
  /mycowsay.sh '$s'
  """
} 

