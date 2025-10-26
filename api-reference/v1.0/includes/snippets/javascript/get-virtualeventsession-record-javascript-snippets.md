---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attendanceRecords = await client.api('/solutions/virtualEvents/webinars/336f94f4-3a81-5130-43e9-88f3-fcb3582cde37/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports/2c2454-7613-4d6e-9c7c-4c8/attendanceRecords')
	.get();

```