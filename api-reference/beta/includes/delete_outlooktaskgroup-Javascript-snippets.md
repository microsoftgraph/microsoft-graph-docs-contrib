
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/outlook/taskgroups/AAMkADIyAAAhrbe-AAA=')
	.version('beta')
	.delete();

```