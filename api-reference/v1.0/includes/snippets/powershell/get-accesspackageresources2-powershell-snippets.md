---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Get-MgEntitlementManagementCatalogResource -AccessPackageCatalogId $accessPackageCatalogId -ExpandProperty "roles,scopes" -Filter "id eq '{resourceId}'" 

```