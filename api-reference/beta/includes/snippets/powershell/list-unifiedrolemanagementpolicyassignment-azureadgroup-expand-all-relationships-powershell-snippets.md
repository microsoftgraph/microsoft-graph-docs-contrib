---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

Get-MgBetaPolicyRoleManagementPolicyAssignment -Filter "scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group' and roleDefinitionId eq 'owner'" -ExpandProperty "policy(`$expand=rules)" 

```