---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const remediate = {
    displayName: 'Clean up Phish email',
    description: 'Delete email',
    severity: 'medium',
    action: 'softDelete',
    remediateSendersCopy: 'false',
    analyzedEmails: [
      {
        networkMessageId: '73ca4154-58d8-43d0-a890-08dc18c52e6d',
        recipientEmailAddress: 'hannah.jarvis@contoso.com'
      },
      {
        networkMessageId: '73ca4154-58d8-43d0-a890-08dc18c52e6d',
        recipientEmailAddress: 'preston.morales@contoso.com'
      }
    ]
};

await client.api('/security/collaboration/analyzedEmails/remediate')
	.version('beta')
	.post(remediate);

```