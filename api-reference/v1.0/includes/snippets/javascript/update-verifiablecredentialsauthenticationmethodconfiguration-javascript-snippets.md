---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
    state: 'disabled',
    excludeTargets: [
        {
            id: '10051f25-53a8-4f81-8a0b-9fc22887e640',
            targetType: 'group'
        },
        {
            id: 'e2c2244f-66cc-4d5b-9042-686f9fa42986',
            targetType: 'group'
        }
    ]
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/VerifiableCredentials')
	.update(authenticationMethodConfiguration);

```