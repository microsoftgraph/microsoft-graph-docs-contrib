---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	autoReconcileProxyConflict = $true
}

Restore-MgBetaDirectoryDeletedItem -DirectoryObjectId $directoryObjectId -BodyParameter $params

```