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
         '@odata.type': '#microsoft.graph.educationLinkedAssignmentResource',
         displayName: 'Existing_Assignment',
         url: 'https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b563da70-710e-4a9b-ba86-94a4d73e5d21'
     }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/74b318fa-e882-4dad-8e1c-dab091b12fe7/resources')
	.version('beta')
	.post(educationModuleResource);

```