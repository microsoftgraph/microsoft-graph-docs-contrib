---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	message = @{
		subject = "Meet for lunch?"
		body = @{
			contentType = "Text"
			content = "The new cafeteria is open."
		}
		toRecipients = @(
			@{
				emailAddress = @{
					address = "samanthab@contoso.onmicrosoft.com"
				}
			}
		)
		ccRecipients = @(
			@{
				emailAddress = @{
					address = "danas@contoso.onmicrosoft.com"
				}
			}
		)
	}
	saveToSentItems = "false"
}

# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params

```