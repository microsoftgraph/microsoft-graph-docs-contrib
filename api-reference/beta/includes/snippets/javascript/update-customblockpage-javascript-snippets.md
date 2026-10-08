---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customBlockPage = {
    state: 'enabled',
    configuration: {
        '@odata.type': '#microsoft.graph.networkaccess.markdownBlockMessageConfiguration',
        body: 'Your admin at NaaSLitware has blocked your access. [Click here for NaaSLitware\'s Terms of Use](https://www.bing.com).'
    }
};

await client.api('/networkAccess/settings/customBlockPage')
	.version('beta')
	.update(customBlockPage);

```