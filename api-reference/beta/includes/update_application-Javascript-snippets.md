
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  allowPublicClient: false,
  displayName: "New display name"
};

let res = await client.api('/applications/{id}')
	.version('beta')
	.update({application : application});

```