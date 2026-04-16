---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OrganizationalBrandingThemeLocalization organizationalBrandingThemeLocalization = new OrganizationalBrandingThemeLocalization();
organizationalBrandingThemeLocalization.setOdataType("#microsoft.graph.organizationalBrandingThemeLocalization");
organizationalBrandingThemeLocalization.setLocale("en-US");
LoginPageBrandingVisualElement accountResetCredentials = new LoginPageBrandingVisualElement();
accountResetCredentials.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setAccountResetCredentials(accountResetCredentials);
organizationalBrandingThemeLocalization.setBackgroundImageRelativeUrl(null);
organizationalBrandingThemeLocalization.setBannerLogoRelativeUrl(null);
LoginPageBrandingVisualElement cannotAccessYourAccount = new LoginPageBrandingVisualElement();
cannotAccessYourAccount.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setCannotAccessYourAccount(cannotAccessYourAccount);
LinkedList<String> cdnHosts = new LinkedList<String>();
organizationalBrandingThemeLocalization.setCdnHosts(cdnHosts);
ContentCustomization contentCustomization = new ContentCustomization();
contentCustomization.setOdataType("microsoft.graph.contentCustomization");
organizationalBrandingThemeLocalization.setContentCustomization(contentCustomization);
organizationalBrandingThemeLocalization.setCustomCSSRelativeUrl(null);
organizationalBrandingThemeLocalization.setFaviconRelativeUrl(null);
LoginPageBrandingVisualElement forgotMyPassword = new LoginPageBrandingVisualElement();
forgotMyPassword.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setForgotMyPassword(forgotMyPassword);
organizationalBrandingThemeLocalization.setHeaderBackgroundColor("#3377ffff");
organizationalBrandingThemeLocalization.setHeaderLogoRelativeUrl(null);
LoginPageLayoutConfiguration loginPageLayoutConfiguration = new LoginPageLayoutConfiguration();
loginPageLayoutConfiguration.setOdataType("microsoft.graph.loginPageLayoutConfiguration");
organizationalBrandingThemeLocalization.setLoginPageLayoutConfiguration(loginPageLayoutConfiguration);
organizationalBrandingThemeLocalization.setPageBackgroundColor("#FFFF33");
LoginPageBrandingVisualElement privacyAndCookies = new LoginPageBrandingVisualElement();
privacyAndCookies.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setPrivacyAndCookies(privacyAndCookies);
LoginPageBrandingVisualElement resetItNow = new LoginPageBrandingVisualElement();
resetItNow.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setResetItNow(resetItNow);
organizationalBrandingThemeLocalization.setSignInPageText("Welcome to Contoso");
organizationalBrandingThemeLocalization.setSquareLogoRelativeUrl(null);
organizationalBrandingThemeLocalization.setSquareLogoDarkRelativeUrl(null);
LoginPageBrandingVisualElement termsOfUse = new LoginPageBrandingVisualElement();
termsOfUse.setOdataType("microsoft.graph.loginPageBrandingVisualElement");
organizationalBrandingThemeLocalization.setTermsOfUse(termsOfUse);
organizationalBrandingThemeLocalization.setUsernameHintText("ContosoUsername");
OrganizationalBrandingThemeLocalization result = graphClient.organization().byOrganizationId("{organization-id}").branding().themes().byOrganizationalBrandingThemeId("{organizationalBrandingTheme-id}").localizations().byOrganizationalBrandingThemeLocalizationLocale("{organizationalBrandingThemeLocalization-locale}").patch(organizationalBrandingThemeLocalization);


```