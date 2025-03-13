---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	certificateAuthorities = @(
		@{
			isRootAuthority = $true
			certificate = [System.Text.Encoding]::ASCII.GetBytes("Binary")
		}
	)
}

New-MgOrganizationCertificateBasedAuthConfiguration -OrganizationId $organizationId -BodyParameter $params

```