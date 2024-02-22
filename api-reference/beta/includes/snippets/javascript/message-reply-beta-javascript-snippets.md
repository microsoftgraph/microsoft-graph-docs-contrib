---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reply = {
  message: {
    toRecipients: [
      {
        emailAddress: {
          address: 'samanthab@contoso.com',
          name: 'Samantha Booth'
        }
      },
      {
        emailAddress: {
          address: 'randiw@contoso.com',
          name: 'Randi Welch'
        }
      }
     ]
  },
  comment: 'Samantha, Randi, would you name the group please?'
};

await client.api('/me/messages/AAMkADA1MTAAAAqldOAAA=/reply')
	.version('beta')
	.post(reply);

```