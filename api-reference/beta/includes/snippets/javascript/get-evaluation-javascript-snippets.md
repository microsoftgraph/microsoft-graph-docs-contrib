---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let evaluation = await client.api('/security/securityCopilot/workspaces/default/sessions/ecdfb9b3-58f5-457f-a18c-4a477890b252/prompts/76a9b8c6-6656-4ef4-a4c7-7ed07fb93e01/evaluations/5bde1164-29a3-4dfb-84b0-b6c0cf0e23b7')
	.version('beta')
	.get();

```