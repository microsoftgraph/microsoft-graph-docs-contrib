---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	hostName = "www.contoso.com"
}

Confirm-MgIdentityRiskPreventionWebApplicationFirewallProvider -WebApplicationFirewallProviderId $webApplicationFirewallProviderId -BodyParameter $params

```