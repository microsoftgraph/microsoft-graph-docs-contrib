---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DirectoryObjects

$params = @{
	Ids = @(
		"84b80893874940a3-97b7-68513b600544"
		"5d6059b6368d-45f8-91e18e07d485f1d0"
	)
	Types = @(
		"user"
	)
}

Get-MgDirectoryObjectById -BodyParameter $params

```