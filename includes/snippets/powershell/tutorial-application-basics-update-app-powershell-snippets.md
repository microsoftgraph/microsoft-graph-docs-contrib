---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Tags = @(
		"HR"
		"Payroll"
		"HideApp"
	)
	Info = @{
		LogoUrl = "https://cdn.pixabay.com/photo/2016/03/21/23/25/link-1271843_1280.png"
		MarketingUrl = "https://www.contoso.com/app/marketing"
		PrivacyStatementUrl = "https://www.contoso.com/app/privacy"
		SupportUrl = "https://www.contoso.com/app/support"
		TermsOfServiceUrl = "https://www.contoso.com/app/termsofservice"
	}
	Web = @{
		HomePageUrl = "https://www.contoso.com/"
		LogoutUrl = "https://www.contoso.com/frontchannel_logout"
		RedirectUris = @(
			"https://localhost"
		)
	}
	ServiceManagementReference = "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;"
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```