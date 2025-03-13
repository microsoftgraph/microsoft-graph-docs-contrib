---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    preferredTokenSigningKeyThumbprint: '5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A'
};

await client.api('/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46')
	.update(servicePrincipal);

```