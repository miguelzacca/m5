Add-Type -AssemblyName Microsoft.VisualBasic

do {
    $result = [Microsoft.VisualBasic.Interaction]::InputBox("Fala alguma coisa ai brendinha", "Brendinha", "Digite aqui")
} while ($result -eq "")  

Invoke-RestMethod -Uri "http://192.168.1.40:3000/recv" -Method Post -ContentType "text/plain" -Body $result
