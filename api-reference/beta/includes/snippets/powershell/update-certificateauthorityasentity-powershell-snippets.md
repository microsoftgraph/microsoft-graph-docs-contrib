---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	isRootAuthority = $true
}

Update-MgBetaDirectoryCertificateAuthorityCertificateBasedApplicationConfigurationTrustedCertificateAuthority -CertificateBasedApplicationConfigurationId $certificateBasedApplicationConfigurationId -CertificateAuthorityAsEntityId $certificateAuthorityAsEntityId -BodyParameter $params

```