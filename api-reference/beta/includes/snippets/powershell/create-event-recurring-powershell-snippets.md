---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Subject = "Let's go for lunch"
	Body = @{
		ContentType = "HTML"
		Content = "Does noon time work for you?"
	}
	Start = @{
		DateTime = "2017-09-04T12:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2017-09-04T14:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Recurrence = @{
		Pattern = @{
			Type = "weekly"
			Interval = 1
			DaysOfWeek = @(
				"Monday"
			)
		}
		Range = @{
			Type = "endDate"
			StartDate = "2017-09-04"
			EndDate = "2017-12-31"
		}
	}
	Location = @{
		DisplayName = "Harry's Bar"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "AdeleV@contoso.onmicrosoft.com"
				Name = "Adele Vance"
			}
			Type = "required"
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserEvent -UserId $userId -BodyParameter $params

```