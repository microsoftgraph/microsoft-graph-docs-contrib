---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	AnswerInputType = "radioButton"
	AnswerOptions = @(
		"Software Engineer"
		"Software Development Manager"
		"Product Manager"
		"Data scientist"
		"Other"
	)
}

Update-MgUserOnlineMeetingRegistrationCustomQuestion -UserId $userId -OnlineMeetingId $onlineMeetingId -MeetingRegistrationQuestionId $meetingRegistrationQuestionId -BodyParameter $params

```