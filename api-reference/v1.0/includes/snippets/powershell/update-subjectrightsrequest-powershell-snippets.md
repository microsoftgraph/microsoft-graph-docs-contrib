---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	"@odata.type" = "#microsoft.graph.subjectRightsRequest"
	internalDueDateTime = [System.DateTime]::Parse("2021-08-30T00:00:00Z")
}

Update-MgPrivacySubjectRightsRequest -SubjectRightsRequestId $subjectRightsRequestId -BodyParameter $params

```