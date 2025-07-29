---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateAuthorityDetail = {
 
  certificateAuthorityType: 'intermediate',
 
};

await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities')
	.version('beta')
	.post(certificateAuthorityDetail);

```