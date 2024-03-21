---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const community = {
  displayName: 'Financial Advice for Software Engineers',
  description: 'A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.',
  privacy: 'public',
  'owners@odata.bind': [
    'https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2'
  ]
};

await client.api('/employeeExperience/communities')
	.version('beta')
	.post(community);

```