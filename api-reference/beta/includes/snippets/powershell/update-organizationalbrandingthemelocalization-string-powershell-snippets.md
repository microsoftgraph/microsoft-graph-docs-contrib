---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.type" = "#microsoft.graph.organizationalBrandingThemeLocalization"
	locale = "en-US"
	accountResetCredentials = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	backgroundImageRelativeUrl = $null
	bannerLogoRelativeUrl = $null
	cannotAccessYourAccount = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	cdnHosts = @(
	)
	contentCustomization = @{
		"@odata.type" = "microsoft.graph.contentCustomization"
	}
	customCSSRelativeUrl = $null
	faviconRelativeUrl = $null
	forgotMyPassword = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	headerBackgroundColor = "#3377ffff"
	headerLogoRelativeUrl = $null
	loginPageLayoutConfiguration = @{
		"@odata.type" = "microsoft.graph.loginPageLayoutConfiguration"
	}
	pageBackgroundColor = "#FFFF33"
	privacyAndCookies = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	resetItNow = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	signInPageText = "Welcome to Contoso"
	squareLogoRelativeUrl = $null
	squareLogoDarkRelativeUrl = $null
	termsOfUse = @{
		"@odata.type" = "microsoft.graph.loginPageBrandingVisualElement"
	}
	usernameHintText = "ContosoUsername"
}

Update-MgBetaOrganizationBrandingThemeLocalization -OrganizationId $organizationId -OrganizationalBrandingThemeId $organizationalBrandingThemeId -OrganizationalBrandingThemeLocalizationLocale $organizationalBrandingThemeLocalizationLocale -BodyParameter $params

```