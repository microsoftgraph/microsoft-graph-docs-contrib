---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	ApplyHoldToSource = $true
	DataSource = @{
		"@odata.type" = "microsoft.graph.ediscovery.userSource"
		Email = "adelev@contoso.com"
	}
}

New-MgComplianceEdiscoveryCaseNoncustodialDataSource -CaseId $caseId -BodyParameter $params

```