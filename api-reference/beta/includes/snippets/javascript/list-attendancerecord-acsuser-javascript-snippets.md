---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attendanceRecords = await client.api('/me/onlineMeetings/{meetingId}/attendanceReports/{reportId}/attendanceRecords')
	.version('beta')
	.get();

```