---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let caseOperation = await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/operations/850c2f64b1ee44a4a69729327aac2b04')
	.version('beta')
	.get();

```