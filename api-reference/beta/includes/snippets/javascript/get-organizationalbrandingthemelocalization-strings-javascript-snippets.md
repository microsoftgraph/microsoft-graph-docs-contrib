---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let organizationalBrandingThemeLocalization = await client.api('/organization/84841066-274d-4ec0-a5c1-276be684bdd3/branding/themes/931cc1bb-5395-4fd7-aa54-406d793a4b05/localizations/fr-FR')
	.version('beta')
	.get();

```