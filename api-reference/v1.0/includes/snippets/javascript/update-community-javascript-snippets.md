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
  privacy: 'public'
};

await client.api('/employeeExperience/communities/eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')
	.update(community);

```