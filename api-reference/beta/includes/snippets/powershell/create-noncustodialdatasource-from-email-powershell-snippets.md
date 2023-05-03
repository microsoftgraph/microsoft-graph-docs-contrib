---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	applyHoldToSource = $true
	dataSource = @{
		"@odata.type" = "microsoft.graph.ediscovery.userSource"
		email = "adelev@contoso.com"
	}
}

New-MgComplianceEdiscoveryCaseNoncustodialDataSource -CaseId $caseId -BodyParameter $params

```