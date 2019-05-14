
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  isRead: "true",
};

let res = await client.api('/me/messages/{id}')
	.version('beta')
	.update({message : message});

```