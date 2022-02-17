---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.PersonalContacts

$params = @{
	EmailAddresses = @(
		@{
			Type = "personal"
			Name = "Pavel Bansky"
			Address = "pavelb@adatum.onmicrosoft.com"
		}
		@{
			Address = "pavelb@fabrikam.onmicrosoft.com"
			Name = "Pavel Bansky"
			Type = "other"
			OtherLabel = "Volunteer work"
		}
	)
}

# A UPN can also be used as -UserId.
Update-MgUserContact -UserId $userId -ContactId $contactId -BodyParameter $params

```