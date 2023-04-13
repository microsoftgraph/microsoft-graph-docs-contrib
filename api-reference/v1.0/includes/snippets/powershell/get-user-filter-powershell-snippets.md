---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -CountVariable CountVar -Consistencylevel "eventual" -Filter "endsWith(mail,'@contoso.com')" 

```