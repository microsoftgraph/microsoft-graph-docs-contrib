---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Get-MgBetaEntitlementManagementAccessPackageCatalogAccessPackageResource -AccessPackageCatalogId $accessPackageCatalogId -Filter "resourceType eq 'Application'" -ExpandProperty "accessPackageResourceScopes" 

```