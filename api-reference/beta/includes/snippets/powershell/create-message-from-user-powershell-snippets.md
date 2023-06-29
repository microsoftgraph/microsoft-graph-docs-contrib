---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	subject = "Did you see last night's game?"
	importance = "Low"
	body = @{
		contentType = "HTML"
		content = "They were <b>awesome</b>!"
	}
	toRecipients = @(
		@{
			emailAddress = @{
				address = "AdeleV@contoso.onmicrosoft.com"
			}
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserMessage -UserId $userId -BodyParameter $params

```