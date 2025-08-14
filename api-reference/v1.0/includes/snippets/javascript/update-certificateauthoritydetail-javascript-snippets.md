---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateAuthorityDetail = {

   isIssuerHintEnabled: true
   
};

await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}')
	.version('beta')
	.update(certificateAuthorityDetail);

```