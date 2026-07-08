---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groups = await client.api('/reports/identityAnalytics/groups')
	.version('beta')
	.filter('isValidGroup eq true and guestTransitiveUserCount gt 0')
	.select('id,displayName,createdDateTime,groupType,transitiveUserCount,guestTransitiveUserCount')
	.orderby('createdDateTime desc')
	.top(10)
	.get();

```