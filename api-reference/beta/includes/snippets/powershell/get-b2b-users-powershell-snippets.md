---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Property "id,displayName,mail,identities" -Filter "endsWith(userPrincipalName,'" -ConsistencyLevel eventual 


```