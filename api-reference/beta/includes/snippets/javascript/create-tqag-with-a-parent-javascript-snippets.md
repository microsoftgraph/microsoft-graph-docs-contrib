---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryReviewTag = {
    displayName: 'My tag API',
    description: 'Use Graph API to create tags',
    childSelectability: 'Many',
    'parent@odata.bind':''
};

await client.api('/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/tags')
	.version('beta')
	.post(ediscoveryReviewTag);

```