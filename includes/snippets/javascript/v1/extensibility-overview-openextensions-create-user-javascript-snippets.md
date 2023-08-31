---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extension = {
    '@odata.type': '#microsoft.graph.openTypeExtension',
    extensionName: 'com.contoso.socialSettings',
    skypeId: 'skypeId.AdeleV',
    linkedInProfile: 'www.linkedin.com/in/testlinkedinprofile',
    xboxGamerTag: 'AwesomeAdele',
    id: 'com.contoso.socialSettings'
};

await client.api('/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions')
	.post(extension);

```