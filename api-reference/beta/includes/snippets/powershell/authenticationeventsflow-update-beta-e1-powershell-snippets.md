---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
	displayName = "New user flow description"
	priority = 200
}

Update-MgBetaIdentityAuthenticationEventFlow -AuthenticationEventsFlowId $authenticationEventsFlowId -BodyParameter $params

```