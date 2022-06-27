---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Subject = "Let's go for lunch"
	Body = @{
		ContentType = "HTML"
		Content = "Does mid month work for you?"
	}
	Start = @{
		DateTime = "2019-03-15T12:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2019-03-15T14:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Location = @{
		DisplayName = "Harry's Bar"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "adelev@contoso.onmicrosoft.com"
				Name = "Adele Vance"
			}
			Type = "required"
		}
	)
	TransactionId = "7E163156-7762-4BEB-A1C6-729EA81755A7"
}

# A UPN can also be used as -UserId.
New-MgUserCalendarEvent -UserId $userId -CalendarId $calendarId -BodyParameter $params

```