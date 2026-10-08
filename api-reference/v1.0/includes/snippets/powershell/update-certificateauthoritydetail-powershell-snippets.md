---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	isIssuerHintEnabled = $true
}

Update-MgDirectoryPublicKeyInfrastructureCertificateBasedAuthConfigurationCertificateAuthority -CertificateBasedAuthPkiId $certificateBasedAuthPkiId -CertificateAuthorityDetailId $certificateAuthorityDetailId -BodyParameter $params

```