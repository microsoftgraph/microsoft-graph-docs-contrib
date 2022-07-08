---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	UpdateCategory = "String"
	Assets = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			Id = "String (identifier)"
		}
	)
}

Invoke-MgUnenrollWindowsUpdatesUpdatableAsset -BodyParameter $params

```