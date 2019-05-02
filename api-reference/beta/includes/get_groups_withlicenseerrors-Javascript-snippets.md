
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/groups')
	.version('beta')
	.filter('hasMembersWithLicenseErrors+eq+true,')
	.select('id,displayName')
	.get();

```