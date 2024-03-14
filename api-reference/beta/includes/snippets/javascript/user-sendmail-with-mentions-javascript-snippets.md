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
    subject: 'Project kickoff',
    toRecipients: [
      {
        emailAddress: {
          name: 'Samantha Booth',
          address: 'samanthab@contoso.com'
        }
      }
    ],
    mentions: [
      {
        mentioned: {
          name: 'Dana Swope',
          address: 'danas@contoso.com'
        }
      }
    ]
  }
};

await client.api('/me/sendMail')
	.version('beta')
	.post(sendMail);

```