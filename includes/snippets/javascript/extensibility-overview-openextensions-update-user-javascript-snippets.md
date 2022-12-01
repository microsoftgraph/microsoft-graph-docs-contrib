---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extension = {
    xboxGamerTag: 'FierceAdele',
    linkedInProfile: 'www.linkedin.com/in/testlinkedinprofile'
};

await client.api('/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions/com.contoso.socialSettings')
	.update(extension);

```