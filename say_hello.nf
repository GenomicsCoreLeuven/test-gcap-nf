process sayHello {
  input:
    val cheers
    val region

  output:
    stdout

  script:
  """
  echo "$cheers $region!"
  """
} 

