---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	applyHoldToSource = $true
	dataSource = @{
		"@odata.type" = "microsoft.graph.ediscovery.userSource"
		email = "adelev@contoso.com"
	}
}

New-MgBetaComplianceEdiscoveryCaseNoncustodialDataSource -CaseId $caseId -BodyParameter $params

```