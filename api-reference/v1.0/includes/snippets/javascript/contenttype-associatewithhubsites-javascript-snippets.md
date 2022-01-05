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
      'https://graph.microsoft.com/v1.0/sites/{site-id}'
   ],
   propagateToExistingLists: false
};

await client.api('/sites/{site-id}/contentTypes/{contentTypeId}/associateWithHubSites')
	.post(associateWithHubSites);

```