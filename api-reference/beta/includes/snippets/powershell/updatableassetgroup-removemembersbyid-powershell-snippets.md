---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.WindowsUpdates

$params = @{
	ids = @(
	"String"
"String"
"String"
)
memberEntityType = "#microsoft.graph.windowsUpdates.azureADDevice"
}

Remove-MgBetaWindowsUpdatesUpdatableAssetMemberById -UpdatableAssetId $updatableAssetId -BodyParameter $params

```