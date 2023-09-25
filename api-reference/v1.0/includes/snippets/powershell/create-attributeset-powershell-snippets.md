---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	id = "Engineering"
	description = "Attributes for engineering team"
	maxAttributesPerSet = 25
}

New-MgDirectoryAttributeSet -BodyParameter $params

```