---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventTownhall = {
  startDateTime: {
    dateTime: '2024-03-31T10:00:00',
    timeZone: 'Pacific Standard Time'
  },
  endDateTime: {
    dateTime: '2024-03-31T17:00:00',
    timeZone: 'Pacific Standard Time'
  }
};

await client.api('/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be')
	.version('beta')
	.update(virtualEventTownhall);

```