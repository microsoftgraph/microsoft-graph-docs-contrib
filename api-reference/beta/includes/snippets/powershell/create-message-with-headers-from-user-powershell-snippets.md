---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	subject = "9/8/2018: concert"
	body = @{
		contentType = "HTML"
		content = "The group represents Washington."
	}
	toRecipients = @(
		@{
			emailAddress = @{
				address = "AlexW@contoso.OnMicrosoft.com"
			}
		}
	)
	internetMessageHeaders = @(
		@{
			name = "x-custom-header-group-name"
			value = "Washington"
		}
		@{
			name = "x-custom-header-group-id"
			value = "WA001"
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserMessage -UserId $userId -BodyParameter $params

```