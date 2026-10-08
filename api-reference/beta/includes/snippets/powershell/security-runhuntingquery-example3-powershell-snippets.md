---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	query = "DeviceProcessEvents | where InitiatingProcessFileName =~ "powershell.exe" | project Timestamp, FileName, InitiatingProcessFileName | order by Timestamp desc | limit 2"
	timespan = "P1D"
	workspaceId = "00000000-0000-0000-0000-000000000001"
}

Start-MgBetaSecurityHuntingQuery -BodyParameter $params

```