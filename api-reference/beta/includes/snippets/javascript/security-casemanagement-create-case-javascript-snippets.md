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
  displayName: 'Security Breach Investigation',
  status: 'active',
  description: 'Investigating potential credential compromise.',
  assignedTo: 'john.doe@contoso.com',
  priority: 'high',
  customFields: {
    'Customer impact': {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldStringValue',
      value: 'Executive mailbox affected'
    },
    'Affected users': {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldNumberValue',
      value: 12
    },
    'Review date': {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldDateTimeValue',
      valueDateTime: '2026-06-15T09:00:00Z'
    },
    'Affected services': {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldOptionsValue',
      values: [
        'Exchange Online',
        'Microsoft Teams'
      ]
    }
  }
};

await client.api('/security/caseManagement/cases')
	.version('beta')
	.post(_case);

```