---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	status = "terminated"
}

Update-MgBetaDirectoryTenantGovernanceRelationship -GovernanceRelationshipId $governanceRelationshipId -BodyParameter $params

```