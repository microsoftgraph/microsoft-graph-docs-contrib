---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.certificateBasedApplicationConfiguration"
	displayName = "New display name"
	description = "New description text"
}

Update-MgBetaDirectoryCertificateAuthorityCertificateBasedApplicationConfiguration -CertificateBasedApplicationConfigurationId $certificateBasedApplicationConfigurationId -BodyParameter $params

```