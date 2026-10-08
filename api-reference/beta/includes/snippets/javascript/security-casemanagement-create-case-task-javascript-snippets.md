---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const task = {
  '@odata.type': '#microsoft.graph.security.caseManagement.task',
  displayName: 'Validate affected devices',
  status: 'new',
  description: 'Review affected devices and collect evidence',
  assignedTo: 'user@contoso.com',
  closingNotes: 'Investigation completed and documented',
  dueDateTime: '2026-06-29T17:54:43Z',
  priority: 'high',
  category: 'investigate'
};

await client.api('/security/caseManagement/cases/{caseId}/tasks')
	.version('beta')
	.post(task);

```