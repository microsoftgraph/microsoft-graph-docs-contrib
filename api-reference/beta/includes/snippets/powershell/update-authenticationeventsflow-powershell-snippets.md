---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/identityProviders/Google-OAUTH"
}

New-MgBetaIdentityAuthenticationEventFlowAsOnAuthenticationMethodLoadStartExternalUserSelfServiceSignUpIdentityProviderByRef -AuthenticationEventsFlowId $authenticationEventsFlowId -BodyParameter $params

```