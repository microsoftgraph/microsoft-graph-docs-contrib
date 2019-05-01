
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const program = {
    displayName: "testprogram3",
    description: "test description"
};

let res = await client.api('/programs')
	.version('beta')
	.post({program : program});

```