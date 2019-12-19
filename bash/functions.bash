now () {
  echo $1 $(date "+%A, %B %e, %Y - %l:%M:%S%p")
}
export -f now
