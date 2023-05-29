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
	comment = "Dana, just want to make sure you get this."
}

# A UPN can also be used as -UserId.
Invoke-MgForwardUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```