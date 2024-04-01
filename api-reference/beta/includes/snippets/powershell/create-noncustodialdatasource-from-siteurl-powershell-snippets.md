---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	applyHoldToSource = $false
	dataSource = @{
		"@odata.type" = "microsoft.graph.ediscovery.siteSource"
		site = @{
			webUrl = "https://contoso.sharepoint.com/sites/SecretSite"
		}
	}
}

New-MgBetaComplianceEdiscoveryCaseNoncustodialDataSource -CaseId $caseId -BodyParameter $params

```