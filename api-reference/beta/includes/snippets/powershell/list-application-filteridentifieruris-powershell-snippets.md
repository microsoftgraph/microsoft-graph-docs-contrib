---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

Get-MgBetaApplication -Filter "identifierUris/any(x:startswith(x,'api://'))" -CountVariable CountVar  -ConsistencyLevel eventual 


```