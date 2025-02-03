---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.NetworkAccess

$params = @{
	"@odata.context" = "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess"
	signalingStatus = "disabled"
}

Update-MgBetaNetworkAccessSettingConditionalAccess -BodyParameter $params

```