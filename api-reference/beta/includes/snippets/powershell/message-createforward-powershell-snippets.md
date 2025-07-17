---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	message = @{
		isDeliveryReceiptRequested = $true
		toRecipients = @(
			@{
				emailAddress = @{
					address = "danas@contoso.com"
					name = "Dana Swope"
				}
			}
		)
	}
	comment = "Dana, just want to make sure you get this; you'll need this if the project gets approved."
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessageForward -UserId $userId -MessageId $messageId -BodyParameter $params

```