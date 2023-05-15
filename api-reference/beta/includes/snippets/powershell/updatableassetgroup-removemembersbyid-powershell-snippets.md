---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	ids = @(
		"String"
		"String"
		"String"
	)
	memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice"
}

Remove-MgWindowsUpdatesUpdatableAssetMemberById -UpdatableAssetId $updatableAssetId -BodyParameter $params

```