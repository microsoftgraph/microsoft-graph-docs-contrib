---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applicationServicePrincipal = {
    displayName: 'Azure AD SAML Toolkit'
};

await client.api('/applicationTemplates/229946b9-a9fb-45b8-9531-efa47453ac9e/instantiate')
	.post(applicationServicePrincipal);

```