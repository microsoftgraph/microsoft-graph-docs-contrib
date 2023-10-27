---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

$params = @{
	updateCategory = "feature"
	memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice"
	ids = @(
		"String"
		"String"
		"String"
	)
}

Invoke-MgBetaEnrollWindowsUpdatesUpdatableAssetById -BodyParameter $params

```