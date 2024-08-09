```javascript
const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/users/{userId}/cloudLicensing/usageRights/{usageRightId}')
	.version('beta')
	.get();
```