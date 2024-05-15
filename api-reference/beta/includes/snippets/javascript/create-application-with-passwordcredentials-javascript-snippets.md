---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  displayName: 'MyAppName',
  passwordCredentials: [
    {
      displayName: 'Password name'
    }
  ]
};

await client.api('/applications')
	.version('beta')
	.post(application);

```