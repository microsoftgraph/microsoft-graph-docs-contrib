---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	subjectLifecycle = "governed"
}

Update-MgEntitlementManagementSubjectByObjectId -BodyParameter $params -ObjectId $objectIdId 

```