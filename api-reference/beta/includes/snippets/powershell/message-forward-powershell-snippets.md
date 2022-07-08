---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	Message = @{
		IsDeliveryReceiptRequested = $true
		ToRecipients = @(
			@{
				EmailAddress = @{
					Address = "danas@contoso.onmicrosoft.com"
					Name = "Dana Swope"
				}
			}
		)
	}
	Comment = "Dana, just want to make sure you get this."
}

# A UPN can also be used as -UserId.
Invoke-MgForwardUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```