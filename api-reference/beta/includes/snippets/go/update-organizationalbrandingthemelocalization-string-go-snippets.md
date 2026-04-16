---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewOrganizationalBrandingThemeLocalization()
locale := "en-US"
requestBody.SetLocale(&locale) 
accountResetCredentials := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetAccountResetCredentials(accountResetCredentials)
backgroundImageRelativeUrl := null
requestBody.SetBackgroundImageRelativeUrl(&backgroundImageRelativeUrl) 
bannerLogoRelativeUrl := null
requestBody.SetBannerLogoRelativeUrl(&bannerLogoRelativeUrl) 
cannotAccessYourAccount := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetCannotAccessYourAccount(cannotAccessYourAccount)
cdnHosts := []string {

}
requestBody.SetCdnHosts(cdnHosts)
contentCustomization := graphmodels.NewContentCustomization()
requestBody.SetContentCustomization(contentCustomization)
customCSSRelativeUrl := null
requestBody.SetCustomCSSRelativeUrl(&customCSSRelativeUrl) 
faviconRelativeUrl := null
requestBody.SetFaviconRelativeUrl(&faviconRelativeUrl) 
forgotMyPassword := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetForgotMyPassword(forgotMyPassword)
headerBackgroundColor := "#3377ffff"
requestBody.SetHeaderBackgroundColor(&headerBackgroundColor) 
headerLogoRelativeUrl := null
requestBody.SetHeaderLogoRelativeUrl(&headerLogoRelativeUrl) 
loginPageLayoutConfiguration := graphmodels.NewLoginPageLayoutConfiguration()
requestBody.SetLoginPageLayoutConfiguration(loginPageLayoutConfiguration)
pageBackgroundColor := "#FFFF33"
requestBody.SetPageBackgroundColor(&pageBackgroundColor) 
privacyAndCookies := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetPrivacyAndCookies(privacyAndCookies)
resetItNow := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetResetItNow(resetItNow)
signInPageText := "Welcome to Contoso"
requestBody.SetSignInPageText(&signInPageText) 
squareLogoRelativeUrl := null
requestBody.SetSquareLogoRelativeUrl(&squareLogoRelativeUrl) 
squareLogoDarkRelativeUrl := null
requestBody.SetSquareLogoDarkRelativeUrl(&squareLogoDarkRelativeUrl) 
termsOfUse := graphmodels.NewLoginPageBrandingVisualElement()
requestBody.SetTermsOfUse(termsOfUse)
usernameHintText := "ContosoUsername"
requestBody.SetUsernameHintText(&usernameHintText) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
localizations, err := graphClient.Organization().ByOrganizationId("organization-id").Branding().Themes().ByOrganizationalBrandingThemeId("organizationalBrandingTheme-id").Localizations().ByOrganizationalBrandingThemeLocalizationLocale("organizationalBrandingThemeLocalization-locale").Patch(context.Background(), requestBody, nil)


```