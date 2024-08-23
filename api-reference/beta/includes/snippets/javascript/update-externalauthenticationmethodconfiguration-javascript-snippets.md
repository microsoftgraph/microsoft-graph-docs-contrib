---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type': '#microsoft.graph.externalAuthenticationMethodConfiguration',
  includeTargets: [
    {
        targetType: 'group',
        id: 'b183b746-e7db-4fa2-bafc-69ecf18850dd',
        isRegistrationRequired: false,
    }
  ],
  state: 'enabled'
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/b183b746-e7db-4fa2-bafc-69ecf18850dd')
	.version('beta')
	.update(authenticationMethodConfiguration);

```