---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Reports

Get-MgBetaAuditLogSignIn -Filter "(signInEventTypes/any(t: t eq 'nonInteractiveUser' OR t eq 'interactiveUser' OR t eq 'servicePrincipal' OR t eq 'managedIdentity'))" 

```