---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	message = @{
		isDeliveryReceiptRequested = $true
		toRecipients = @(
			@{
				emailAddress = @{
					address = "danas@contoso.onmicrosoft.com"
					name = "Dana Swope"
				}
			}
		)
	}
	comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved."
}

# A UPN can also be used as -UserId.
New-MgUserMessageForward -UserId $userId -MessageId $messageId -BodyParameter $params

```