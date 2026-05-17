---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.organizationalBrandingTheme"
	name = "ContosoTheme"
	isDefaultTheme = $true
}

New-MgBetaOrganizationBrandingTheme -OrganizationId $organizationId -BodyParameter $params

```