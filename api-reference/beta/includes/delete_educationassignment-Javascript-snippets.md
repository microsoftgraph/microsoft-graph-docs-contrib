
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/education/classes/11014/assignmentCategories/19002')
	.version('beta')
	.delete();

```