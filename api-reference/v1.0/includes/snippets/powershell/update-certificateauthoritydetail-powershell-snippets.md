---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	isIssuerHintEnabled = $true
}

Update-MgBetaDirectoryPublicKeyInfrastructureCertificateBasedAuthConfigurationCertificateAuthority -CertificateBasedAuthPkiId $certificateBasedAuthPkiId -CertificateAuthorityDetailId $certificateAuthorityDetailId -BodyParameter $params

```