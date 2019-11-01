(*  Multiplication of two natural numbers *)

let rec mult = fun 
  0 n -> 0 
| m n when m mod 2 = 0 -> mult (m/2) (n*2)
| m n -> mult ((m-1)/2) (n*2) + n ;;






