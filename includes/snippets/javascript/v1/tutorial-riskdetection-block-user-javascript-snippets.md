---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conditionalAccessPolicy = {
  displayName: 'Policy for risky sign-in block access',
  state: 'enabled',
  conditions: {
    signInRiskLevels: [
      'high',
      'medium'
    ],
    applications: {
      includeApplications: ['All']
    },
    users: {
      includeUsers: [
        '4628e7df-dff3-407c-a08f-75f08c0806dc'
      ]
    }
  },
  grantControls: {
    operator: 'OR',
    builtInControls: [
      'block'
    ]
  }
};

await client.api('/identity/conditionalAccess/policies')
	.post(conditionalAccessPolicy);

```