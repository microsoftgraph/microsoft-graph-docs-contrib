---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.akamaiWebApplicationFirewallProvider"
	displayName = "Akamai Provider Example"
	hostPrefix = "akab-exampleprefix"
	clientSecret = "akamai_example_secret_123"
	clientToken = "akamai_example_token_456"
	accessToken = "akamai_example_token_789"
}

New-MgIdentityRiskPreventionWebApplicationFirewallProvider -BodyParameter $params

```