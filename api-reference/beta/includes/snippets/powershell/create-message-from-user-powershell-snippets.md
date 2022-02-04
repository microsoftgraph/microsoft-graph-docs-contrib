---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	Subject = "Did you see last night's game?"
	Importance = "Low"
	Body = @{
		ContentType = "HTML"
		Content = "They were <b>awesome</b>!"
	}
	ToRecipients = @(
		@{
			EmailAddress = @{
				Address = "AdeleV@contoso.onmicrosoft.com"
			}
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserMessage -UserId $userId -BodyParameter $params

```