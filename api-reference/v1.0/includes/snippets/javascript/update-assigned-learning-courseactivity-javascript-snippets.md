---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const learningCourseActivity = {
  '@odata.type': '#microsoft.graph.learningAssignment',
  assignedDateTime: '2021-05-11T22:57:17+00:00',
  assignmentType: 'required',
  assignerUserId: 'cea1684d-57dc-438d-a9d1-e666ec1a7f3d',
  completedDateTime: null,
  completionPercentage: 20,
  learningProviderId: '01e8f81b-3060-4dec-acf0-0389665a0a38',
  dueDateTime: {
    dateTime: '2022-09-22T16:05:00.0000000',
    timeZone: 'UTC'
  },
  externalCourseActivityId: '12a2228a-e020-11ec-9d64-0242ac120002',
  learningContentId: '57baf9dc-e020-11ec-9d64-0242ac120002',
  learnerUserId: '7ba2228a-e020-11ec-9d64-0242ac120002',
  notes: {
    contentType: 'text',
    content: 'required assignment added for user'
  },
  status: 'inProgress'
};

await client.api('/employeeExperience/learningProviders/01e8f81b-3060-4dec-acf0-0389665a0a38/learningCourseActivities/8ba2228a-e020-11ec-9d64-0242ac120003')
	.update(learningCourseActivity);

```