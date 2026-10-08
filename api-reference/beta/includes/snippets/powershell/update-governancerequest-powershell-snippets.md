---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	status = "accepted"
}

Update-MgBetaDirectoryTenantGovernanceRequest -GovernanceRequestId $governanceRequestId -BodyParameter $params

```