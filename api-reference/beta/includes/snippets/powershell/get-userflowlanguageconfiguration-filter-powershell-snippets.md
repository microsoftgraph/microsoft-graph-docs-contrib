---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgIdentityB2CUserFlowLanguage -B2cIdentityUserFlowId $b2cIdentityUserFlowId -Filter "isEnabled eq true"  -OutFile $outFileId

```