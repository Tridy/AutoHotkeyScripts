# source: https://gist.github.com/mjmenger/1069aac25d05eb97686bcda85ac90fc0
# Turning on and off Elgato lights. It does not have to be PowerShell but whatever tool that can send HTTP PUT request. In my case I used PowerShell. 
# The IP address needs to be adjusted, I am not sure if the port is the same for all.
# {"on":1} is for ON {"on":0} is for OFF

$elgatoLightUrl = "http://192.168.X.X:9123/elgato/lights";

$json = @"
    {
        "numberOfLights":1,
        "lights":[{"on":1}]
    }
"@

Invoke-RestMethod -Method PUT -Uri $elgatoLightUrl -Body $json;
