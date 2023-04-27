---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	subject = "Let's go for lunch"
	body = @{
		contentType = "HTML"
		content = "Does noon work for you?"
	}
	start = @{
		dateTime = "2020-02-25T12:00:00"
		timeZone = "Pacific Standard Time"
	}
	end = @{
		dateTime = "2020-02-25T14:00:00"
		timeZone = "Pacific Standard Time"
	}
	location = @{
		displayName = "Harry's Bar"
	}
	attendees = @(
		@{
			emailAddress = @{
				address = "AlexW@contoso.OnMicrosoft.com"
				name = "Alex Wilbur"
			}
			type = "required"
		}
	)
	recurrence = @{
		pattern = @{
			type = "daily"
			interval = 1
		}
		range = @{
			type = "numbered"
			startDate = "2020-02-25"
			numberOfOccurrences = 2
		}
	}
}

# A UPN can also be used as -UserId.
New-MgUserEvent -UserId $userId -BodyParameter $params

```