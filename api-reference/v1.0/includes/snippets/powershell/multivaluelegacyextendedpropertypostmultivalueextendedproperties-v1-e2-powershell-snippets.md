---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	multiValueExtendedProperties = @(
		@{
			id = "StringArray {66f5a359-4659-4830-9070-00049ec6ac6e} Name Palette"
			value = @(
				"Green"
				"Aqua"
				"Blue"
			)
		}
	)
}

# A UPN can also be used as -UserId.
Update-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```