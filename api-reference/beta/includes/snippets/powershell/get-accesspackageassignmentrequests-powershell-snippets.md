---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Get-MgBetaEntitlementManagementAccessPackageAssignmentRequest -ExpandProperty "requestor(`$expand=connectedOrganization)" -Filter "(requestState eq 'PendingApproval')" 

```