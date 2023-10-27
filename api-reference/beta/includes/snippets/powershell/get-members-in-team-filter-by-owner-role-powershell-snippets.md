---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Teams

Get-MgBetaTeamMember -TeamId $teamId -Filter "roles/any(r:r eq 'owner')" 

```