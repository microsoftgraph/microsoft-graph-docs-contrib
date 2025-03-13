---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	phoneNumber = "+15555555555"
	displayName = "Bob Henry"
}

New-MgBetaDirectoryPendingExternalUserProfile -BodyParameter $params

```