---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Reports

Get-MgAuditLogSignIn -Filter "(signInEventTypes/any(t: t ne 'interactiveUser'))" -Sort "createdDateTime DESC" -Top 10 

```