---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.PersonalContacts

$params = @{
	givenName = "Pavel"
	surname = "Bansky"
	emailAddresses = @(
		@{
			address = "pavelb@fabrikam.onmicrosoft.com"
			name = "Pavel Bansky"
		}
	)
	businessPhones = @(
		"+1 732 555 0102"
	)
}

# A UPN can also be used as -UserId.
New-MgUserContact -UserId $userId -BodyParameter $params

```