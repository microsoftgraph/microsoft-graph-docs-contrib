---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let meetingAttendanceReport = await client.api('/solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}')
	.version('beta')
	.get();

```