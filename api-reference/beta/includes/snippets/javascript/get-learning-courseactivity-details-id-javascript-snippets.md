---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let learningCourseActivity = await client.api('/employeeExperience/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003')
	.version('beta')
	.get();

```