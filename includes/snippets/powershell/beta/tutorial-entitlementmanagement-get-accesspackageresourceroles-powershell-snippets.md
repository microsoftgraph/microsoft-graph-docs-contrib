---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Get-MgBetaEntitlementManagementAccessPackageCatalogAccessPackageResourceRole -AccessPackageCatalogId $accessPackageCatalogId -Filter "(originSystem eq 'AadGroup' and accessPackageResource/id eq '4a1e21c5-8a76-4578-acb1-641160e076e8' and displayName eq 'Member')" -ExpandProperty "accessPackageResource" 

```