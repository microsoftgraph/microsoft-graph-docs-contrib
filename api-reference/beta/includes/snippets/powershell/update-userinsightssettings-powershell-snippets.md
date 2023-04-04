---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	IsEnabled = "false"
}

Update-MgUserSettingItemInsight -UserId $userId -BodyParameter $params

```