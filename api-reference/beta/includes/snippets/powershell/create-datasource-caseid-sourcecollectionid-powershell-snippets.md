---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	"@odata.type" = "microsoft.graph.ediscovery.userSource"
	email = "badguy@contoso.com"
}

New-MgBetaComplianceEdiscoveryCaseSourceCollectionAdditionalSource -CaseId $caseId -SourceCollectionId $sourceCollectionId -BodyParameter $params

```