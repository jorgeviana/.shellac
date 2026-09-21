@test "can run our script" {
  load '../test/test_helper/bats-support/load.bash'
  load '../test/test_helper/bats-assert/load.bash'

  run ./bin/spring-diff "web" "web,devtools"

  assert_output --partial "OK Computer!"
}
