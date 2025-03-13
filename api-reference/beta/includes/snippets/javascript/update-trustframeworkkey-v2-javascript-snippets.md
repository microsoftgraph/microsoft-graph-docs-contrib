---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKey_v2 = {
  status: 'enabled'
};

await client.api('/trustFramework/keySets/{trustFrameworkKeySetId}/keys_v2/aTREvwojOB9ph3fr2r6eTf_5eD5fmQsfsapVMwYI3o')
	.version('beta')
	.update(trustFrameworkKey_v2);

```