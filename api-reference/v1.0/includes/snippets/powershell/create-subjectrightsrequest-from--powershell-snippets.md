---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	type = "microsoft.graph.subjectRightsRequestType"
	dataSubjectType = "microsoft.graph.dataSubjectType"
	regulations = @(
		"String"
	)
	displayName = "String"
	description = "String"
	internalDueDateTime = [System.DateTime]::Parse("String (timestamp)")
	dataSubject = @{
		firstName = "String"
		lastName = "String"
		email = "String"
		residency = "String"
		phoneNumber = "String"
		SSN = "String"
	}
}

New-MgPrivacySubjectRightsRequest -BodyParameter $params

```