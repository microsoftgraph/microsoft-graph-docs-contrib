---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Filter "endswith(mail,'a@contoso.com')" -Sort "userPrincipalName" -CountVariable CountVar -ConsistencyLevel eventual 


```