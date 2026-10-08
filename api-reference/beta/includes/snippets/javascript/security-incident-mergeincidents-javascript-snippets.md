---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mergeResponse = {
  incidentIds: [
    '2972395',
    '2972396'
  ],
  incidentComment: 'Merging related incidents from the same campaign',
  mergeReasons: 'sameCampaign, sameActor'
};

await client.api('/security/incidents/mergeIncidents')
	.version('beta')
	.post(mergeResponse);

```