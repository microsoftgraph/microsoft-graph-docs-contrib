
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  destinationId: "destinationId-value"
};

let res = await client.api('/me/messages/{id}/copy')
	.post(message);

```