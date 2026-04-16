---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.cloudFlareWebApplicationFirewallProvider"
	displayName = "Cloudflare Provider Example"
	zoneId = "11111111111111111111111111111111"
	apiToken = "cf_example_token_123"
}

New-MgIdentityRiskPreventionWebApplicationFirewallProvider -BodyParameter $params

```