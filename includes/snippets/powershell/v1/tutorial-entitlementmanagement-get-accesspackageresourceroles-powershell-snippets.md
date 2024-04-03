---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgEntitlementManagementCatalogResourceRole -AccessPackageCatalogId $accessPackageCatalogId -Filter "(originSystem eq 'AadGroup' and displayName eq 'Member' and resource/id eq '274a1e21c5-8a76-4578-acb1-641160e076e')" -ExpandProperty "resource" 

```