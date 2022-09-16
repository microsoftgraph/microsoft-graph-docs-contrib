---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DirectoryObjects

$params = @{
	SecurityEnabledOnly = $false
}

Get-MgDirectoryObjectMemberGroup -DirectoryObjectId $directoryObjectId -BodyParameter $params

```