---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resources = await client.api('/education/classes/2003c52e-807a-4186-9b49-60c573095461/assignments/8f5311bb-ee1e-4bf0-9827-3fd8c57bdde2/submissions/57ef8ee2-4755-4351-66d0-8e37192870a5/resources')
	.version('beta')
	.filter(' id eq \'c4682401-6866-4962-94d9-7499782a13e9\'')
	.get();

```