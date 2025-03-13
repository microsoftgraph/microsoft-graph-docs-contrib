---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

Get-MgBetaUserChat -UserId $userId -ExpandProperty "members" -Filter "members/any(o: o/displayname eq 'Peter Parker')" 

```