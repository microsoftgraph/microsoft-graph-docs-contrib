---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tasks = {
  '@odata.type': '#microsoft.graph.task',
  textBody: 'String',
  bodyLastModifiedDateTime: 'String (timestamp)',
  completedDateTime: 'String (timestamp)',
  dueDateTime: {
    '@odata.type': 'microsoft.graph.dateTimeTimeZone'
  },
  startDateTime: {
    '@odata.type': 'microsoft.graph.dateTimeTimeZone'
  },
  importance: 'String',
  recurrence: {
    '@odata.type': 'microsoft.graph.patternedRecurrence'
  },
  displayName: 'String',
  status: 'String',
  viewpoint: {
    '@odata.type': 'microsoft.graph.taskViewpoint'
  }
};

await client.api('/me/tasks/lists/AQMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNi/tasks')
	.version('beta')
	.post(tasks);

```