---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	displayName = "Contoso PKI"
}

Update-MgDirectoryPublicKeyInfrastructureCertificateBasedAuthConfiguration -CertificateBasedAuthPkiId $certificateBasedAuthPkiId -BodyParameter $params

```