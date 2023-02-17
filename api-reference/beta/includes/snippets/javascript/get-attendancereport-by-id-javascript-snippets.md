---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let meetingAttendanceReport = await client.api('/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/attendanceReports/2c2c2454-7613-4d6e-9c7c-4cf7a6cdce89')
	.version('beta')
	.expand('attendanceRecords')
	.get();

```