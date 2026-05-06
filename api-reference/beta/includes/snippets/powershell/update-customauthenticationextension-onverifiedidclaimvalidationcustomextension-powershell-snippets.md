---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtension"
	displayName = "Verified ID Claim Validation (updated)"
	description = "Updated description for Verified ID claim validation"
}

Update-MgBetaIdentityCustomAuthenticationExtension -CustomAuthenticationExtensionId $customAuthenticationExtensionId -BodyParameter $params

```