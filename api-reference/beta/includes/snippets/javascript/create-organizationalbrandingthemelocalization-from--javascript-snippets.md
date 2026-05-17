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
      locale: 'fr-FR',
      headerBackgroundColor: '#3377ffff',
      pageBackgroundColor: '#FFFF33',
      signInPageText: 'Welcome to Contoso',
      usernameHintText: 'ContosoUsername '
};

await client.api('/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations')
	.version('beta')
	.post(organizationalBrandingThemeLocalization);

```