---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	relatedContacts = @(
		@{
			displayName = "Father Time"
			emailAddress = "father@time.com"
			mobilePhone = "4251231234"
			relationship = "guardian"
			accessConsent = $true
		}
		@{
			displayName = "Mother Nature"
			emailAddress = "mother@nature.co.uk"
			mobilePhone = "3251231234"
			relationship = "parent"
			accessConsent = $true
		}
	)
}

Update-MgEducationUser -EducationUserId $educationUserId -BodyParameter $params

```