---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodsPolicy = {
    '@odata.context': 'https://graph.microsoft.com/v1.0/$metadata#authenticationMethodsPolicy',
    authenticationMethodConfigurations: [
        {
            '@odata.type': '#microsoft.graph.fido2AuthenticationMethodConfiguration',
            id: 'Fido2',
            state: 'disabled',
            isSelfServiceRegistrationAllowed: false,
            isAttestationEnforced: false,
            keyRestrictions: {
                isEnforced: false,
                enforcementType: 'block',
                aaGuids: []
            }
        }
    ]
};

await client.api('/policies/authenticationMethodsPolicy')
	.update(authenticationMethodsPolicy);

```