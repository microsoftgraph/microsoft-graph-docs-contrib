---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgEntitlementManagementAccessPackageCatalogAccessPackageResource -AccessPackageCatalogId $accessPackageCatalogId -Filter "resourceType eq 'Application'" -ExpandProperty "accessPackageResourceScopes"  -OutFile $outFileId

```