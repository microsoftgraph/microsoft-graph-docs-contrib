---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	content = @{
		content = "Please take a look at the files tagged with follow up"
		contentType = "text"
	}
}

New-MgPrivacySubjectRightsRequestNote -SubjectRightsRequestId $subjectRightsRequestId -BodyParameter $params

```