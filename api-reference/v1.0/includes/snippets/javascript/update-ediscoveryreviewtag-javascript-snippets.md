---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryReviewTag = {
    displayName: 'My tag API 2',
    description: 'Use Graph API to create tags (updated)'
};

await client.api('/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/tags/062de822f17a4a2e9b833aa3f6c37108')
	.update(ediscoveryReviewTag);

```