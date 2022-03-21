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
		DateTime = "2020-02-25T12:00:00"
		TimeZone = "Pacific Standard Time"
	}
	End = @{
		DateTime = "2020-02-25T14:00:00"
		TimeZone = "Pacific Standard Time"
	}
	Location = @{
		DisplayName = "Harry's Bar"
	}
	Attendees = @(
		@{
			EmailAddress = @{
				Address = "AlexW@contoso.OnMicrosoft.com"
				Name = "Alex Wilbur"
			}
			Type = "required"
		}
	)
	Recurrence = @{
		Pattern = @{
			Type = "daily"
			Interval = 1
		}
		Range = @{
			Type = "numbered"
			StartDate = "2020-02-25"
			NumberOfOccurrences = 2
		}
	}
}

# A UPN can also be used as -UserId.
New-MgUserEvent -UserId $userId -BodyParameter $params

```