---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	message = @{
		toRecipients = @(
			@{
				emailAddress = @{
					address = "samanthab@contoso.com"
					name = "Samantha Booth"
				}
			}
			@{
				emailAddress = @{
					address = "randiw@contoso.com"
					name = "Randi Welch"
				}
			}
		)
	}
	comment = "Samantha, Randi, would you name the group if the project is approved, please?"
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessageReply -UserId $userId -MessageId $messageId -BodyParameter $params

```