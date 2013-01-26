(* 目的: FizzBuzzを解く *)
(* 3の倍数であれば、Fizz *)
(* 5の倍数であれば、Buzz *)
(* 3 かつ 5 の倍数であれば、FizzBuzz *)
(* それ以外は、もとの数字 *)
(* fizzbuzz : int -> string *)
let fizzbuzz n = if n mod 15 = 0 then "FizzBuzz"
                 else if n mod 3 = 0 then "Fizz"
                 else if n mod 5 = 0 then "Buzz"
                 else string_of_int n


(* テスト *)
let test1 = fizzbuzz 3 = "Fizz"
let test2 = fizzbuzz 5 = "Buzz"
let test3 = fizzbuzz 15 = "FizzBuzz"
let test4 = fizzbuzz 123 = "Fizz"
let test5 = fizzbuzz 1111 = "1111"


(* 実行方法
 * 出力や入力の仕方は、知らないので、
 * Ocamlのインタープリタを起動して、
 * #use "fizzbuzz.ml"
 * と入力すれば、テストの部分が実行されて
 * true か false であってんのか確認できます。 *)
