---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicyConfigurationDefault = {
  invitationRedemptionIdentityProviderConfiguration: { 
    primaryIdentityProviderPrecedenceOrder: [ 
        'externalFederation', 
        'azureActiveDirectory', 
        'socialIdentityProviders' 
    ], 
    fallbackIdentityProvider: 'emailOneTimePasscode' 
  } 
};

await client.api('/policies/crossTenantAccessPolicy/default')
	.update(crossTenantAccessPolicyConfigurationDefault);

```