---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable = $null
	extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker = "E4"
}

Update-MgUser -UserId $userId -BodyParameter $params

```