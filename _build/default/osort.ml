

let osort = 
        let rec printer = function
                | [] ->  "\n\n"
                | [x] -> x ^ "\n"
                | x::xs -> x ^ " " ^ (printer xs)
         in
            print_string (printer (((Array.sub Sys.argv 1 ((Array.length Sys.argv) -1))|> Array.to_list) |> List.sort compare))
