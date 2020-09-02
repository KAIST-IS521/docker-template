open System

[<EntryPoint>]
let main _argv =
  Console.WriteLine "1 + 1 = ?"
  Console.ReadLine ()
  |> Convert.ToInt32
  |> fun n ->
    if n = 2 then IO.File.ReadAllText ("/var/ctf/flag") |> Console.WriteLine
    else Console.WriteLine ()
  0
