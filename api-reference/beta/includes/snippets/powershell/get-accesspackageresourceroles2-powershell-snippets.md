---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Get-MgBetaEntitlementManagementAccessPackageCatalogAccessPackageResourceRole -AccessPackageCatalogId $accessPackageCatalogId -Filter "(originSystem eq 'SharePointOnline' and accessPackageResource/id eq '53c71803-a0a8-4777-aecc-075de8ee3991')" -Property "displayName,originId" 

```