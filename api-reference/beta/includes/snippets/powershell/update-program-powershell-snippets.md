---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "testprogram3 new name"
}

Update-MgProgram -ProgramId $programId -BodyParameter $params

```