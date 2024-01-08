---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const learningCourseActivity = {
  '@odata.type': '#microsoft.graph.learningSelfInitiatedCourse',
  completedDateTime: null,
  completionPercentage: 30,
  externalCourseActivityId: '12a2228a-e020-11ec-9d64-0242ac120002',
  learningContentId: '57baf9dc-e020-11ec-9d64-0242ac120002',
  learningProviderId: '01e8f81b-3060-4dec-acf0-0389665a0a38',
  startedDateTime: '2021-05-11T22:57:17+00:00',
  status: 'inProgress'
};

await client.api('/employeeExperience/learningProviders/01e8f81b-3060-4dec-acf0-0389665a0a38/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003')
	.version('beta')
	.update(learningCourseActivity);

```