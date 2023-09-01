---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	id = "c1"
	displayName = "Contoso medium"
	description = "Medium protection level defined for Contoso policy"
	isAvailable = $true
}

Update-MgBetaIdentityConditionalAccessAuthenticationContextClassReference -AuthenticationContextClassReferenceId $authenticationContextClassReferenceId -BodyParameter $params

```