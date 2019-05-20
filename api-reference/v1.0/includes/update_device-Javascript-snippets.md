
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const device = {
  accountEnabled: false
};

let res = await client.api('/devices/{id}')
	.update({device : device});

```