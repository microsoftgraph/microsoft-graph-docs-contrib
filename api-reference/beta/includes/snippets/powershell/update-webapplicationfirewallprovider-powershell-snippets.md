---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.cloudFlareWebApplicationFirewallProvider"
	displayName = "cloudFlare"
}

Update-MgBetaIdentityRiskPreventionWebApplicationFirewallProvider -WebApplicationFirewallProviderId $webApplicationFirewallProviderId -BodyParameter $params

```