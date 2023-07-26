---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	tags = @(
		"HR"
		"Payroll"
		"HideApp"
	)
	info = @{
		logoUrl = "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png"
		marketingUrl = "https://www.contoso.com/app/marketing"
		privacyStatementUrl = "https://www.contoso.com/app/privacy"
		supportUrl = "https://www.contoso.com/app/support"
		termsOfServiceUrl = "https://www.contoso.com/app/termsofservice"
	}
	web = @{
		homePageUrl = "https://www.contoso.com/"
		logoutUrl = "https://www.contoso.com/frontchannel_logout"
		redirectUris = @(
			"https://localhost"
		)
	}
	serviceManagementReference = "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;"
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```