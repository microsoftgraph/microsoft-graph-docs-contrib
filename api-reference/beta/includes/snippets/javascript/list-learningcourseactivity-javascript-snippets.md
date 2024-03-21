---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let learningCourseActivities = await client.api('/users/7ba2228a-e020-11ec-9d64-0242ac120002/employeeExperience/learningCourseActivities')
	.version('beta')
	.get();

```