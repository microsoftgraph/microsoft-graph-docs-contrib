---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Filter "NOT(imAddresses/any(i:i eq 'admin@contoso.com'))" -CountVariable CountVar -ConsistencyLevel eventual 


```