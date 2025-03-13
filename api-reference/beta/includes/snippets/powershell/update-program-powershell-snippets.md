---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	displayName = "testprogram3 new name"
}

Update-MgBetaProgram -ProgramId $programId -BodyParameter $params

```