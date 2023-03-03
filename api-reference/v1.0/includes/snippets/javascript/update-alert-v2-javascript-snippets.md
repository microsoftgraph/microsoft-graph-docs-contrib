---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alert = {
    assignedTo: 'secAdmin@contoso.onmicrosoft.com',
    classification: 'truePositive',
    determination: 'malware',
    status: 'inProgress'
};

await client.api('/security/alerts_v2/da637551227677560813_-961444813')
	.update(alert);

```