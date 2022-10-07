---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Filter "endswith(mail,'a@contoso.com')" -Sort "userPrincipalName" -CountVariable CountVar -ConsistencyLevel eventual 


```