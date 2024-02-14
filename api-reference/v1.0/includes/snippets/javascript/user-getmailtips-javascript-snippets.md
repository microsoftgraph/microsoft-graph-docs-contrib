---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailTips = {
    EmailAddresses: [
        'danas@contoso.com',
        'fannyd@contoso.com'
    ],
    MailTipsOptions: 'automaticReplies, mailboxFullStatus'
};

await client.api('/me/getMailTips')
	.post(mailTips);

```