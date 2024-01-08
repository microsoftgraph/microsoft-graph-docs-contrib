---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	message = @{
		toRecipients = @(
			@{
				emailAddress = @{
					address = "samanthab@contoso.onmicrosoft.com"
					name = "Samantha Booth"
				}
			}
			@{
				emailAddress = @{
					address = "randiw@contoso.onmicrosoft.com"
					name = "Randi Welch"
				}
			}
		)
	}
	comment = "Samantha, Randi, would you name the group please?"
}

# A UPN can also be used as -UserId.
Invoke-MgReplyUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```