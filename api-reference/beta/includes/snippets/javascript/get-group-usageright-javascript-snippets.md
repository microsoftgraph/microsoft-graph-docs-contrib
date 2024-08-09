```javascript
const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/groups/{groupId}/cloudLicensing/usageRights/{usageRightId}')
	.version('beta')
	.get();
```