plan terraform::destroy(
	Optional[String[1]] $dir = undef,
	Optional[String[1]] $state = undef,
	Optional[Variant[String[1], Array[String[1]]]] $target = undef,
	Optional[Hash] $var = undef,
	Optional[String[1]] $var_file = undef
  ) {
  	
  $opts = {
  	'dir' => $dir,
  	'state' => $state,
  	'target' => $target,
  	'var' => $var,
  	'var_file' => $var_file
  }
  $result = run_task('terraform::destroy', 'localhost', $opts)
  return $result
}
