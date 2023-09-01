---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgEntitlementManagementCatalogResourceRole -AccessPackageCatalogId $accessPackageCatalogId -Filter "(originSystem eq 'AadGroup' and resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')" -ExpandProperty "resource" 

```