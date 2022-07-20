---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	SignInPageText = "Welcome to Contoso France."
	UsernameHintText = " "
}

Update-MgOrganizationBrandingLocalization -OrganizationId $organizationId -OrganizationalBrandingLocalizationId $organizationalBrandingLocalizationId -BodyParameter $params

```