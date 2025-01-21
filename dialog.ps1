Add-Type -AssemblyName Microsoft.VisualBasic

do {
    $result = [Microsoft.VisualBasic.Interaction]::InputBox("Puta?", "Brendinha", "Sim ou Não")
} while ($result -eq "") 

Invoke-RestMethod -Uri "http://192.168.1.40:3000/recv" -Method Post -ContentType "text/plain" -Body $result
