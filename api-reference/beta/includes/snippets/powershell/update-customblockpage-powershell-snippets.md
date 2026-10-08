---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	state = "enabled"
	configuration = @{
		"@odata.type" = "#microsoft.graph.networkaccess.markdownBlockMessageConfiguration"
		body = "Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware's Terms of Use](https://www.bing.com)."
	}
}

Update-MgBetaNetworkAccessSettingCustomBlockPage -BodyParameter $params

```