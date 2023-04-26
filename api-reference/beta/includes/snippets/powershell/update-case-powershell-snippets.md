---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	displayName = "My Case 1 - Renamed"
	description = "Updated description"
	externalId = "Updated externalId"
}

Update-MgComplianceEdiscoveryCase -CaseId $caseId -BodyParameter $params

```