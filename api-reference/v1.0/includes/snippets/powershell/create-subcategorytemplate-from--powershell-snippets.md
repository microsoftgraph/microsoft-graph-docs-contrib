---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.subCategoryTemplate"
	displayName = "Vendor Invoice"
}

New-MgSecurityLabelCategorySubcategory -CategoryTemplateId $categoryTemplateId -BodyParameter $params

```