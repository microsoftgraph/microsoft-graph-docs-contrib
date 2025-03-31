---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	newUserPrincipalName = "johndoe@contoso.com"
}

Restore-MgBetaDirectoryDeletedItem -DirectoryObjectId $directoryObjectId -BodyParameter $params

```