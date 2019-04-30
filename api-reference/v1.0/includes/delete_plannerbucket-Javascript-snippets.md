
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/planner/buckets/{id}')
	.delete();

```