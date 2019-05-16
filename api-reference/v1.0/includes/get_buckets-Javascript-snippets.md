
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/planner/plans/{plan-id}/buckets')
	.get();

```