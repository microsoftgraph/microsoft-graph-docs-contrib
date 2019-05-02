
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/me/events/AAMkAGUzYRgWAAA=/instances')
	.version('beta')
	.select('subject,bodyPreview,seriesMasterId,type,recurrence,start,end')
	.get();

```