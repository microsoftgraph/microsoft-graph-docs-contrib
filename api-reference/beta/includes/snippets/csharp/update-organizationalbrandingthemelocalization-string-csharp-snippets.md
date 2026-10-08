---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OrganizationalBrandingThemeLocalization
{
	OdataType = "#microsoft.graph.organizationalBrandingThemeLocalization",
	Locale = "en-US",
	AccountResetCredentials = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	BackgroundImageRelativeUrl = null,
	BannerLogoRelativeUrl = null,
	CannotAccessYourAccount = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	CdnHosts = new List<string>
	{
	},
	ContentCustomization = new ContentCustomization
	{
		OdataType = "microsoft.graph.contentCustomization",
	},
	CustomCSSRelativeUrl = null,
	FaviconRelativeUrl = null,
	ForgotMyPassword = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	HeaderBackgroundColor = "#3377ffff",
	HeaderLogoRelativeUrl = null,
	LoginPageLayoutConfiguration = new LoginPageLayoutConfiguration
	{
		OdataType = "microsoft.graph.loginPageLayoutConfiguration",
	},
	PageBackgroundColor = "#FFFF33",
	PrivacyAndCookies = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	ResetItNow = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	SignInPageText = "Welcome to Contoso",
	SquareLogoRelativeUrl = null,
	SquareLogoDarkRelativeUrl = null,
	TermsOfUse = new LoginPageBrandingVisualElement
	{
		OdataType = "microsoft.graph.loginPageBrandingVisualElement",
	},
	UsernameHintText = "ContosoUsername",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Organization["{organization-id}"].Branding.Themes["{organizationalBrandingTheme-id}"].Localizations["{organizationalBrandingThemeLocalization-locale}"].PatchAsync(requestBody);


```