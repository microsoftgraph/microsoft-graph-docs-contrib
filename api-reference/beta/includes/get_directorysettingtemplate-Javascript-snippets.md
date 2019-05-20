
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/directorySettingTemplates/{id}')
	.version('beta')
	.get();

```