---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Property "id,displayName,mail,identities" -Filter "endsWith(userPrincipalName,'" -ConsistencyLevel eventual 


```