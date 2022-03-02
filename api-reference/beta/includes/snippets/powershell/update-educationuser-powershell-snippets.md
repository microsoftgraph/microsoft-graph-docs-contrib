---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	RelatedContacts = @(
		@{
			DisplayName = "Father Time"
			EmailAddress = "father@time.com"
			MobilePhone = "4251231234"
			Relationship = "guardian"
			AccessConsent = $true
		}
		@{
			DisplayName = "Mother Nature"
			EmailAddress = "mother@nature.co.uk"
			MobilePhone = "3251231234"
			Relationship = "parent"
			AccessConsent = $true
		}
	)
}

Update-MgEducationUser -EducationUserId $educationUserId -BodyParameter $params

```