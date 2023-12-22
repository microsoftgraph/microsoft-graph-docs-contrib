---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "All Contoso volunteers - Terms of use"
	isViewingBeforeAcceptanceRequired = $true
}

Update-MgBetaIdentityGovernanceTermsOfUseAgreement -AgreementId $agreementId -BodyParameter $params

```