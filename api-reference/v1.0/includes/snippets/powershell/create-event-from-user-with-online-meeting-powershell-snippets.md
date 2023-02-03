---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Subject = "Let's go for lunch"
	Body = @{
		ContentType = "HTML"
		Content = "Does noon work for you?"
	}
	Start = @{
		DateTime = "2017-04-15T12:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2017-04-15T14:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Location = @{
		DisplayName = "Harry's Bar"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "samanthab@contoso.onmicrosoft.com"
				Name = "Samantha Booth"
			}
			Type = "required"
		}
	)
	AllowNewTimeProposals = $true
	IsOnlineMeeting = $true
	OnlineMeetingProvider = "teamsForBusiness"
}

# A UPN can also be used as -UserId.
New-MgUserEvent -UserId $userId -BodyParameter $params

```