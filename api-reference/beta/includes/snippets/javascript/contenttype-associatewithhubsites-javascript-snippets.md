---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const associateWithHubSites = {
   hubSiteUrls: [
      'https://graph.microsoft.com/beta/sites/id'
   ],
   propagateToExistingLists: false
};

await client.api('/sites/{siteId}/contentTypes/{contentTypeId}/associateWithHubSites')
	.version('beta')
	.post(associateWithHubSites);

```