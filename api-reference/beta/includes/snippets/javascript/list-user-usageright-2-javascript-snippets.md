TODO:??

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let usageRights = await client.api('/users/{userId}/cloudLicensing/usageRights')
	.version('beta')
	.filter('services/any(c:c/planId eq 113feb6c-3fe4-4440-bddc-54d774bf0318)')
	.get();

```