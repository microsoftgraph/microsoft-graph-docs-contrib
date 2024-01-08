---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    description: 'Marketing department folks',
    displayName: 'Marketing department',
    groupTypes: [
        'Unified',
        'DynamicMembership'
    ],
    mailEnabled: true,
    mailNickname: 'marketing',
    securityEnabled: false,
    membershipRule: 'user.department -eq \"Marketing\"',
    membershipRuleProcessingState: 'on'
};

await client.api('/groups')
	.post(group);

```