---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	certificateAuthorities = @(
		@{
			isRootAuthority = $true
			certificate = [System.Text.Encoding]::ASCII.GetBytes("Binary")
		}
	)
}

New-MgBetaOrganizationCertificateBasedAuthConfiguration -OrganizationId $organizationId -BodyParameter $params

```