---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	"@odata.type" = "#microsoft.graph.meetingRegistrant"
	firstName = "Frederick"
	lastName = "Cormier"
	email = "frederick.cormier@contoso.com"
	customQuestionAnswers = @(
	)
}

New-MgBetaUserOnlineMeetingRegistrationRegistrant -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```