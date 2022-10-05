---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const removeHold = {
    ids: [
        '39333641443238353535383731453339',
        '46333131344239353834433430454335'
    ]
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialdatasources/removeHold')
	.version('beta')
	.post(removeHold);

```