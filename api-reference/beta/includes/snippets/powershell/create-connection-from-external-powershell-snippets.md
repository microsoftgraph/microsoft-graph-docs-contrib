---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	Id = "contosohr"
	Name = "Contoso HR"
	Description = "Connection to index Contoso HR system"
}

New-MgExternalConnection -BodyParameter $params

```