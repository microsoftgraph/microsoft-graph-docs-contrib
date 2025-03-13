---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	singleValueExtendedProperties = @(
		@{
			id = "String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color"
			value = "Green"
		}
	)
}

# A UPN can also be used as -UserId.
Update-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```