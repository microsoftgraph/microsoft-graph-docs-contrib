---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	subjectLifecycle = "governed"
}

Update-MgBetaEntitlementManagementSubjectByObjectId -BodyParameter $params -ObjectId $objectIdId 

```