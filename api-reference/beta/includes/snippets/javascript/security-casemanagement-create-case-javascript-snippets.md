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
    customerImpact: {
      '@odata.type': '#microsoft.graph.security.caseManagement.customFieldStringValue',
      value: 'Executive mailbox affected'
    }
  }
};

await client.api('/security/caseManagement/cases')
	.version('beta')
	.post(_case);

```