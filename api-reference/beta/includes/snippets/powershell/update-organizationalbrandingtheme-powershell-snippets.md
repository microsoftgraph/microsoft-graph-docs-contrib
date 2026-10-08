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

Update-MgBetaOrganizationBrandingTheme -OrganizationId $organizationId -OrganizationalBrandingThemeId $organizationalBrandingThemeId -BodyParameter $params

```