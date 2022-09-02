---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	"@odata.type" = "microsoft.graph.ediscovery.userSource"
	Email = "badguy@contoso.com"
}

New-MgComplianceEdiscoveryCaseSourceCollectionAdditionalSource -CaseId $caseId -SourceCollectionId $sourceCollectionId -BodyParameter $params

```