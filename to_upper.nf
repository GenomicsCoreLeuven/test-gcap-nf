process toUpper {
  input:
    val s

  output:
    stdout

  script:
  """
  echo "$s" | tr '[a-z]' '[A-Z]' 
  """
} 

