---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const claimsMappingPolicy = {
    definition: [
        '{\"ClaimsMappingPolicy\':{\'Version\':1,\'IncludeBasicClaimSet\':\'true\", \"ClaimsSchema\': [{\'Source\':\'user\",\"ID\':\'assignedroles\",\"SamlClaimType\': \'https://aws.amazon.com/SAML/Attributes/Role\"}, {\"Source\':\'user\",\"ID\':\'userprincipalname\",\"SamlClaimType\': \'https://aws.amazon.com/SAML/Attributes/RoleSessionName\"}, {\"Value\':\'900\",\"SamlClaimType\': \'https://aws.amazon.com/SAML/Attributes/SessionDuration\"}, {\"Source\':\'user\",\"ID\':\'assignedroles\",\"SamlClaimType\': \'appRoles\"}, {\"Source\':\'user\",\"ID\':\'userprincipalname\",\"SamlClaimType\': \"https://aws.amazon.com/SAML/Attributes/nameidentifier\"}]}}"
    ],
    displayName: 'AWS Claims Policy',
    isOrganizationDefault: false
};

await client.api('/policies/claimsMappingPolicies')
	.post(claimsMappingPolicy);

```