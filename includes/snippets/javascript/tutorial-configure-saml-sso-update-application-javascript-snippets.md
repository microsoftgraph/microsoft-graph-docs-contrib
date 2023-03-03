---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const application = {
  web: {
    redirectUris: [
      'https://signin.aws.amazon.com/saml'
    ] 
  },
  identifierUris: [
    'https://signin.aws.amazon.com/saml'
  ]    
};

await client.api('/applications/a9be408a-6c31-4141-8cea-52fcd4a61be8')
	.update(application);

```