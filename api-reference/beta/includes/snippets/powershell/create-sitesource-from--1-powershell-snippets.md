---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	site = @{
		webUrl = "https://contoso.sharepoint.com/sites/HumanResources"
	}
}

New-MgComplianceEdiscoveryCaseCustodianSiteSource -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```