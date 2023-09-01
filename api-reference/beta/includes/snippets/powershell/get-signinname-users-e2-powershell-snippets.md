---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Property "displayName,id" -Filter "identities/any(c:c/issuerAssignedId eq 'j.smith@yahoo.com' and c/issuer eq 'My B2C tenant')" 

```