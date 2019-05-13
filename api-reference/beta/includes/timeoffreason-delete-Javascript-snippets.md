
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/teams/{teamId}/schedule/timeOffReasons/{timeOffReasonId}')
	.version('beta')
	.delete();

```