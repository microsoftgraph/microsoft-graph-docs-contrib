---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

$params = @{
	assets = @(
		@{
			"@odata.type" = "#microsoft.graph.windowsUpdates.azureADDevice"
			id = "String (identifier)"
		}
	)
}

Add-MgBetaWindowsUpdatesUpdatableAssetMember -UpdatableAssetId $updatableAssetId -BodyParameter $params

```