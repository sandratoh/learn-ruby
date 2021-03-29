true && true
# true

false && true 
# false

1 == 1 && 2 == 1
# false

"test" == "test"
# true

1 == 1 || 2 != 1 
# true

true && 1 == 1
# true

false && 0 != 0
# false

true || 1 == 1
# true

1 != 0 && 2 == 1
# false

"test" != "testing"
# true

"test" == 1
# false

!(true && false)
# true - equals to !(false) which is true!

!(1 == 1 && 0 != 1)
# false - equals to !(true && true) = !(true)

!(10 == 1 || 1000 == 1000)
# false - equals to !(false || true) = !(true)

!(1 != 10 || 3 == 4)
# true - equals to !(true || false) = !(true)

!("testing" == "testing" && "Zed" == "Cool Guy")
# true

1 == 1 && (!("testing" == 1 || 1 == 0))
# true

"chunky" == "bacon" && (!(3 == 4 || 3 == 3 ))
# false

3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))
# false - equals
          # true && (!(true || false))
          # true && (!(true))
          # true && false
          # false