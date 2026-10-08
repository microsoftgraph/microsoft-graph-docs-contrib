---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	isUploadDone = $true
}

Update-MgEntitlementManagementCatalogResourceUploadSession -AccessPackageCatalogId $accessPackageCatalogId -AccessPackageResourceId $accessPackageResourceId -CustomDataProvidedResourceUploadSessionId $customDataProvidedResourceUploadSessionId -BodyParameter $params

```