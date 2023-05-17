---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.WindowsUpdates

$params = @{
	"@odata.type" = "#microsoft.graph.windowsUpdates.operationalInsightsConnection"
	azureSubscriptionId = "322ec614-e9c2-4cd5-a55c-5711fdecf02e"
	azureResourceGroupName = "target-resource-group"
	workspaceName = "my-workspace"
}

New-MgWindowsUpdatesResourceConnection -BodyParameter $params

```