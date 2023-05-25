---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	updateCategory = "String"
	assets = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			id = "String (identifier)"
		}
	)
}

Invoke-MgUnenrollWindowsUpdatesUpdatableAsset -BodyParameter $params

```