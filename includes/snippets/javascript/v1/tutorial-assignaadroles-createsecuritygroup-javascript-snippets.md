---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    description: 'IT Helpdesk to support Contoso employees',
    displayName: 'IT Helpdesk (User)',
    mailEnabled: false,
    mailNickname: 'userHelpdesk',
    securityEnabled: true,
    isAssignableToRole: true,
    'owners@odata.bind': [
        'https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6'
    ],
    'members@odata.bind': [
        'https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6',
        'https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725'
    ]
};

await client.api('/groups')
	.post(group);

```