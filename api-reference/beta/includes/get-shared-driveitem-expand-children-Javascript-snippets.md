
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/shares/{shareIdOrUrl}/driveItem')
	.version('beta')
	.expand('children')
	.get();

```