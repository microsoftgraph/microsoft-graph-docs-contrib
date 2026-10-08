---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const organizationalBrandingThemeLocalization = {
  '@odata.type': '#microsoft.graph.organizationalBrandingThemeLocalization',
  locale: 'en-US',
  accountResetCredentials: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  backgroundImageRelativeUrl: null,
  bannerLogoRelativeUrl: null,
  cannotAccessYourAccount: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  cdnHosts: [],
  contentCustomization: {
    '@odata.type': 'microsoft.graph.contentCustomization'
  },
  customCSSRelativeUrl: null,
  faviconRelativeUrl: null,
  forgotMyPassword: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  headerBackgroundColor: '#3377ffff',
  headerLogoRelativeUrl: null,
  loginPageLayoutConfiguration: {
    '@odata.type': 'microsoft.graph.loginPageLayoutConfiguration'
  },
  pageBackgroundColor: '#FFFF33',
  privacyAndCookies: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  resetItNow: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  signInPageText: 'Welcome to Contoso',
  squareLogoRelativeUrl: null,
  squareLogoDarkRelativeUrl: null,
  termsOfUse: {
    '@odata.type': 'microsoft.graph.loginPageBrandingVisualElement'
  },
  usernameHintText: 'ContosoUsername'
};

await client.api('/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR')
	.version('beta')
	.update(organizationalBrandingThemeLocalization);

```