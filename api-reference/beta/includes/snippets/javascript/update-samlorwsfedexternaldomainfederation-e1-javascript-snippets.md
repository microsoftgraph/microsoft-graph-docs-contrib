---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const samlOrWsFedExternalDomainFederation = {
  displayName: 'Contoso name change',
  issuerUri: 'http://contoso-test.com/adfs/services/trust',
  metadataExchangeUri: null,
  signingCertificate: 'M66C6DCCAdCgAwIBAgIQQ6vYJIVKQ',
  passiveSignInUri: 'https://contoso-test.com/adfs/ls/',
  preferredAuthenticationProtocol: 'wsFed'
};

await client.api('/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation/d5a56845-6845-d5a5-4568-a5d54568a5d5')
	.version('beta')
	.update(samlOrWsFedExternalDomainFederation);

```