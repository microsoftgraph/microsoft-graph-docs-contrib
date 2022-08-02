---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgIdentityConditionalAccessPolicy -Filter "displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'"  -OutFile $outFileId

```