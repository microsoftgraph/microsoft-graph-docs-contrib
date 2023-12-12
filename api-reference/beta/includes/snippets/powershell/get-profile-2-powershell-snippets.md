---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

# A UPN can also be used as -UserId.
Get-MgBetaUserProfile -UserId $userId -ExpandProperty "names(`$select=first,last),skills(`$select=displayName)" 

```