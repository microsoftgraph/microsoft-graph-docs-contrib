---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "displayName-value"
	IsViewingBeforeAcceptanceRequired = $true
}

Update-MgIdentityGovernanceTermOfUseAgreement -AgreementId $agreementId -BodyParameter $params

```