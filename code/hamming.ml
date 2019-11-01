(* A Hamming number is a number divisible only by 2, 3, and 5 *)

let hamming n = 
  let rec is_hamming = function 
    n when n mod 2 = 0 -> is_hamming (n/2)
  | n when n mod 3 = 0 -> is_hamming (n/3)
  | n when n mod 5 = 0 -> is_hamming (n/5)
  | 1 -> true 
  | _ -> false 
  in if n = 1 then false else is_hamming n ;;
  
(* If we treat 1 as a Hamming number also then the code simplifies a bit *)

let rec hamming = function 
    n when n mod 2 = 0 -> hamming (n/2)
  | n when n mod 3 = 0 -> hamming (n/3)
  | n when n mod 5 = 0 -> hamming (n/5)
  | 1 -> true 
  | _ -> false ;;


