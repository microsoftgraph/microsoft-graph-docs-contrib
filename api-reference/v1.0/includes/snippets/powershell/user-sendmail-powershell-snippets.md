---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	Message = @{
		Subject = "Meet for lunch?"
		Body = @{
			ContentType = "Text"
			Content = "The new cafeteria is open."
		}
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "frannis@contoso.onmicrosoft.com"
				}
			}
		)
		CcRecipients = @(
			@{
				EmailAddress = @{
					Address = "danas@contoso.onmicrosoft.com"
				}
			}
		)
	}
	SaveToSentItems = "false"
}

# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params

```