---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Filter "startswith(displayName,'Eric')" -Property "displayName,signInActivity" 

```