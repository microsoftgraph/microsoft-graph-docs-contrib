---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	allowedAudiences = "contacts"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserProfileAnniversary -UserId $userId -PersonAnnualEventId $personAnnualEventId -BodyParameter $params

```