---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

$params = @{
	givenName = "Pavel"
	surname = "Bansky"
	emailAddresses = @(
		@{
			address = "pavelb@contoso.com"
			name = "Pavel Bansky"
			type = "personal"
		}
		@{
			address = "pavelb@contoso.com"
			name = "Pavel Bansky"
			type = "other"
			otherLabel = "Volunteer work"
		}
	)
	phones = @(
		@{
			number = "+1 732 555 0102"
			type = "business"
		}
	)
}

# A UPN can also be used as -UserId.
New-MgBetaUserContact -UserId $userId -BodyParameter $params

```