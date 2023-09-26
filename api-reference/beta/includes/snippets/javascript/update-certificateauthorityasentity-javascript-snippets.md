---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const certificateAuthorityAsEntity = {
  isRootAuthority: true
};

await client.api('/directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1/trustedCertificateAuthorities/a55a2232-07a4-4b40-8914-a120f46a633e')
	.version('beta')
	.update(certificateAuthorityAsEntity);

```