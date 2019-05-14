
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/planner/tasks/'id'/progressTaskBoardFormat')
	.version('beta')
	.get();

```