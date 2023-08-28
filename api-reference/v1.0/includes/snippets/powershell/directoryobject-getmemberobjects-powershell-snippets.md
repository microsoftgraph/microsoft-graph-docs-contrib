---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DirectoryObjects

$params = @{
	securityEnabledOnly = $true
}

Get-MgDirectoryObjectMemberObject -DirectoryObjectId $directoryObjectId -BodyParameter $params

```