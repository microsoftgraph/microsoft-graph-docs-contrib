---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	marketingNotificationEmails = @(
		"marketing@contoso.com"
	)
	privacyProfile = @{
		contactEmail = "alice@contoso.com"
		statementUrl = "https://contoso.com/privacyStatement"
	}
	securityComplianceNotificationMails = @(
		"security@contoso.com"
	)
	securityComplianceNotificationPhones = @(
		"(123) 456-7890"
	)
	technicalNotificationMails = @(
		"tech@contoso.com"
	)
}

Update-MgOrganization -OrganizationId $organizationId -BodyParameter $params

```