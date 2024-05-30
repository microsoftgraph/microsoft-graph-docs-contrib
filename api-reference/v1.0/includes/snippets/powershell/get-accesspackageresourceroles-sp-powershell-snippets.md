---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgEntitlementManagementCatalogResourceRole -AccessPackageCatalogId $accessPackageCatalogId -Filter "(originSystem eq 'SharePointOnline' and resource/id eq 'dcc3f966-a73c-48e2-8c1d-bcac775488c3')" -ExpandProperty "resource" 

```