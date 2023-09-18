---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	answerInputType = "radioButton"
	answerOptions = @(
		"Software Engineer"
		"Software Development Manager"
		"Product Manager"
		"Data scientist"
		"Other"
	)
}

# A UPN can also be used as -UserId.
Update-MgBetaUserOnlineMeetingRegistrationCustomQuestion -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingRegistrationQuestionId $meetingRegistrationQuestionId -BodyParameter $params

```