---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	content = @{
		content = "String"
		contentType = "text"
	}
}

New-MgPrivacySubjectRightsRequestNote -SubjectRightsRequestId $subjectRightsRequestId -BodyParameter $params

```