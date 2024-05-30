---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationModuleResource = {
    resource: {
         '@odata.type': '#microsoft.graph.educationLinkResource',
         displayName: 'Bing site',
         link: 'https://www.bing.com'
     }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources')
	.post(educationModuleResource);

```