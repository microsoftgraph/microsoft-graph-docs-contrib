---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Filter "otherMails/any(x:endswith(x,'.edu'))" -CountVariable CountVar  -ConsistencyLevel eventual 


```