---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	Message = @{
		Subject = "Project kickoff"
		ToRecipients = @(
			@{
				EmailAddress = @{
					Name = "Samantha Booth"
					Address = "samanthab@contoso.onmicrosoft.com"
				}
			}
		)
		Mentions = @(
			@{
				Mentioned = @{
					Name = "Dana Swope"
					Address = "danas@contoso.onmicrosoft.com"
				}
			}
		)
	}
}

# A UPN can also be used as -UserId.
Send-MgUserMail -UserId $userId -BodyParameter $params

```