---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Filter "otherMails/any(x:endswith(x,'.edu'))" -CountVariable CountVar  -ConsistencyLevel eventual 


```