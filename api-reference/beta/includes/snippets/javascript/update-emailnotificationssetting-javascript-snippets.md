---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const emailNotificationsSetting = {
  isEnabled: 'true',
  additionalEvents: 'restoreAndPolicyUpdates',
  recipients: {
    recipients: {
      role: 'custom',
      customRecipients: [
        {
          email: 'amala@contoso.com'
        },
        {
          email: 'conrad@contoso.com'
        },
        {
          email: 'lothar@contoso.com'
        }
      ]
    }
  }
};

await client.api('/solutions/backupRestore/emailNotificationsSetting')
	.version('beta')
	.update(emailNotificationsSetting);

```