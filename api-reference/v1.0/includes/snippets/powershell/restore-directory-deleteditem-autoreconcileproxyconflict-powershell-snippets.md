---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	autoReconcileProxyConflict = $true
}

Restore-MgDirectoryDeletedItem -DirectoryObjectId $directoryObjectId -BodyParameter $params

```