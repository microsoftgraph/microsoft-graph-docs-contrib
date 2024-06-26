---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.subcategoryTemplate"
	displayName = "Vendor Invoice"
}

New-MgBetaSecurityLabelCategorySubcategory -CategoryTemplateId $categoryTemplateId -BodyParameter $params

```