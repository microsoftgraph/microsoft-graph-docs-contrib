---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attendanceReports = await client.api('/solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports')
	.version('beta')
	.get();

```