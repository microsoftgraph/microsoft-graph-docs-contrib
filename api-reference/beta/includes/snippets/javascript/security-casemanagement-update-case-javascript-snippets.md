---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _case = {
  '@odata.type': '#microsoft.graph.security.caseManagement.genericCase',
  displayName: 'Case MS-001',
  status: 'Open',
  description: 'Investigating potential credential compromise.',
  assignedTo: 'john.doe@contoso.com',
  priority: 'high',
  dueDateTime: '2026-06-29T17:54:43Z',
  closingNotes: 'Follow up with the account owner.',
  customFields: {
    'Customer impact': {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldStringValue',
      value: 'Multiple executive mailboxes affected'
    }
  }
};

await client.api('/security/caseManagement/cases/{caseId}')
	.version('beta')
	.update(_case);

```