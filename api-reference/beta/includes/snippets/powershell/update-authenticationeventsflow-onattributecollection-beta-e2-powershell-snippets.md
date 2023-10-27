---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow"
	onAttributeCollection = @{
		"@odata.type" = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp"
	}
}

Update-MgBetaIdentityAuthenticationEventFlow -AuthenticationEventsFlowId $authenticationEventsFlowId -BodyParameter $params

```