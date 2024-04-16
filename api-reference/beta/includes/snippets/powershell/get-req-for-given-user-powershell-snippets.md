---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	subject = @{
		objectId = "5acd375c-8acb-45de-a958-fa0dd89259ad"
	}
}

Get-MgBetaEntitlementManagementAccessPackageApplicablePolicyRequirement -AccessPackageId $accessPackageId -BodyParameter $params

```