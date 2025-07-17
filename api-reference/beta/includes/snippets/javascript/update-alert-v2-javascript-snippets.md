---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alert = {
    assignedTo: 'secAdmin@contoso.com',
    classification: 'truePositive',
    determination: 'malware',
    status: 'inProgress',
    CustomDetails: {newKey: 'newValue'}
};

await client.api('/security/alerts_v2/da637551227677560813_-961444813')
	.version('beta')
	.update(alert);

```