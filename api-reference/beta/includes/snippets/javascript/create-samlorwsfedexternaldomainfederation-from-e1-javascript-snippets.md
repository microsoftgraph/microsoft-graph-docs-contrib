---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const samlOrWsFedExternalDomainFederation = {
    '@odata.type': 'microsoft.graph.samlOrWsFedExternalDomainFederation',
    issuerUri: 'https://contoso.com/issuerUri',
    displayName: 'contoso display name',
    metadataExchangeUri: 'https://contoso.com/metadataExchangeUri',
    passiveSignInUri: 'https://contoso.com/signin',
    preferredAuthenticationProtocol: 'wsFed',
    domains: [
        {
            '@odata.type': 'microsoft.graph.externalDomainName',
            id: 'contoso.com'
        }
    ],
    signingCertificate: 'MIIDADCCAeigAwIBAgIQEX41y8r6'
};

await client.api('/directory/federationConfigurations/microsoft.graph.samlOrWsFedExternalDomainFederation')
	.version('beta')
	.post(samlOrWsFedExternalDomainFederation);

```