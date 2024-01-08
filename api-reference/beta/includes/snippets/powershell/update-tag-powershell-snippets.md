---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	description = "This is an updated description."
}

Update-MgBetaComplianceEdiscoveryCaseTag -CaseId $caseId -TagId $tagId -BodyParameter $params

```