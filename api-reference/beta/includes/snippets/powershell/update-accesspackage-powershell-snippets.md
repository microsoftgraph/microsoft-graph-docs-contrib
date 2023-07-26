---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "Access Package New Name"
}

Update-MgBetaEntitlementManagementAccessPackage -AccessPackageId $accessPackageId -BodyParameter $params

```