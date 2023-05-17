---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	message = @{
		subject = "9/9/2018: concert"
		body = @{
			contentType = "HTML"
			content = "The group represents Nevada."
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
				value = "Nevada"
			}
			@{
				name = "x-custom-header-group-id"
				value = "NV001"
			}
		)
	}
}

# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params

```