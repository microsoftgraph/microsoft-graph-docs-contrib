---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Query = "DeviceProcessEvents | where InitiatingProcessFileName =~ "powershell.exe" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
}

Start-MgSecurityHuntingQuery -BodyParameter $params

```