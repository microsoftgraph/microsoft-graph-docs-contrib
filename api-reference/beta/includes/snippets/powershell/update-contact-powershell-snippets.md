---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

$params = @{
	emailAddresses = @(
		@{
			type = "personal"
			name = "Pavel Bansky"
			address = "pavelb@adatum.onmicrosoft.com"
		}
		@{
			address = "pavelb@fabrikam.onmicrosoft.com"
			name = "Pavel Bansky"
			type = "other"
			otherLabel = "Volunteer work"
		}
	)
}

# A UPN can also be used as -UserId.
Update-MgBetaUserContact -UserId $userId -ContactId $contactId -BodyParameter $params

```