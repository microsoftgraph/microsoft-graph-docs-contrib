
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/onenote/resources/{id}/content')
	.get();

```