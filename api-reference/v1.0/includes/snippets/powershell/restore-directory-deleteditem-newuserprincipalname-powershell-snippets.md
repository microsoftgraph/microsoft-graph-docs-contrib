---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	newUserPrincipalName = "johndoe@contoso.com"
}

Restore-MgDirectoryDeletedItem -DirectoryObjectId $directoryObjectId -BodyParameter $params

```