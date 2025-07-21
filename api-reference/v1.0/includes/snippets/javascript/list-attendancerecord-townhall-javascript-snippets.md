---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attendanceRecords = await client.api('/solutions/virtualEvents/townhalls/f8ce2a5f-0e6a-4186-aa90-1f64bc023566/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports/2c2454-7613-4d6e-9c7c-4c8/attendanceRecords')
	.get();

```