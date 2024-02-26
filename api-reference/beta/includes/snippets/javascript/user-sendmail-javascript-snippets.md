---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sendMail = {
  message: {
    subject: 'Meet for lunch?',
    body: {
      contentType: 'Text',
      content: 'The new cafeteria is open.'
    },
    toRecipients: [
      {
        emailAddress: {
          address: 'samanthab@contoso.com'
        }
      }
    ],
    ccRecipients: [
      {
        emailAddress: {
          address: 'danas@contoso.com'
        }
      }
    ]
  },
  saveToSentItems: 'false'
};

await client.api('/me/sendMail')
	.version('beta')
	.post(sendMail);

```