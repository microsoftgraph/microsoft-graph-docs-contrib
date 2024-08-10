```javascript
const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/groups/{groupId}/cloudLicensing/usageRights')
	.version('beta')
	.filter('services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)')
	.get();
```