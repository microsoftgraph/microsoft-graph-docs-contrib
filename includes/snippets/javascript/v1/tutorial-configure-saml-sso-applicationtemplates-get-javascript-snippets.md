---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationTemplates = await client.api('/applicationTemplates')
	.filter('displayName eq \'AWS IAM Identity Center (successor to AWS Single Sign-On)\'')
	.get();

```