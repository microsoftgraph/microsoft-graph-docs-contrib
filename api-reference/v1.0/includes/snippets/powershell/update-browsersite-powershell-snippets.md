---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DeviceManagement

$params = @{
	webUrl = "www.microsoft.com"
	targetEnvironment = "microsoftEdge"
	mergeType = "default"
	compatibilityMode = "default"
	allowRedirect = $false
	comment = "Updating to Edge."
}

Update-MgAdminEdgeInternetExplorerModeSiteListSite -BrowserSiteListId $browserSiteListId -BrowserSiteId $browserSiteId -BodyParameter $params

```