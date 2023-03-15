---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Subject = "Prep for customer meeting"
	Body = @{
		ContentType = "HTML"
		Content = "Does this time work for you?"
	}
	Start = @{
		DateTime = "2019-11-20T13:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2019-11-20T14:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Location = @{
		DisplayName = "Cordova conference room"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "AdeleV@contoso.OnMicrosoft.com"
				Name = "Adele Vance"
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