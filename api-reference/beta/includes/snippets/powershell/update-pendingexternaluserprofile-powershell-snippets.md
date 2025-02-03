---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	jobTitle = "Contractor"
}

Update-MgBetaDirectoryPendingExternalUserProfile -PendingExternalUserProfileId $pendingExternalUserProfileId -BodyParameter $params

```