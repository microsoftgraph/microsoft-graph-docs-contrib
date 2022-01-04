---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const aAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT = {
  '@odata.type': '#microsoft.graph.baseTask',
  body: {
    '@odata.type': 'microsoft.graph.itemBody'
  },
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
  personalProperties: {
    '@odata.type': 'microsoft.graph.personalTaskProperties'
  }
};

await client.api('/me/tasks/lists/AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT')
	.version('beta')
	.update(aAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT);

```