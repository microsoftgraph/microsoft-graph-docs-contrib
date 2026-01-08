---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgApplication -Filter "identifierUris/any(x:startswith(x,'api://'))" -CountVariable CountVar  -ConsistencyLevel eventual 


```