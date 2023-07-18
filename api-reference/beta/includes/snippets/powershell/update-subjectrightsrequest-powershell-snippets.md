---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	"@odata.type" = "#microsoft.graph.subjectRightsRequest"
	internalDueDateTime = [System.DateTime]::Parse("2021-08-30T00:00:00Z")
}

Update-MgBetaPrivacySubjectRightsRequest -SubjectRightsRequestId $subjectRightsRequestId -BodyParameter $params

```