
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/planner/plans/xqQg5FS2LkCp935s-FIFm2QAFkHM/details')
	.version('beta')
	.get();

```