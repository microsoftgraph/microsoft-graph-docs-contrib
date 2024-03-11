---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationModule = {
    displayName: 'New_Module5 updated',
    description: 'updated for description'
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/f68ab046-ef5b-429f-9575-16a685ce0d7a')
	.update(educationModule);

```