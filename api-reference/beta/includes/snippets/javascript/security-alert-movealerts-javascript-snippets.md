---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mergeResponse = {
  alertIds: [
    'da637551227677560813_-961444813',
    'da637551227677560813_-961444814'
  ],
  incidentId: '2972395',
  alertComment: 'Moving alerts for investigation consolidation',
  newCorrelationReasons: 'sameAsset, temporalProximity'
};

await client.api('/security/alerts_v2/moveAlerts')
	.version('beta')
	.post(mergeResponse);

```