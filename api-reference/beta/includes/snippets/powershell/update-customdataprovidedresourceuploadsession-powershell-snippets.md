---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	isUploadDone = $true
}

Update-MgBetaIdentityGovernanceCatalogAccessPackageResourceUploadSession -AccessPackageCatalogId $accessPackageCatalogId -AccessPackageResourceId $accessPackageResourceId -CustomDataProvidedResourceUploadSessionId $customDataProvidedResourceUploadSessionId -BodyParameter $params

```