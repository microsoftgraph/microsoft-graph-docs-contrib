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
        '@odata.type': '#microsoft.graph.educationFileResource',
        displayName: 'csv_file.csv',
        file: {
            odataid: 'https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7A2QVVORGJNVBIC4LLM3XQ6UTS'
        }
    }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/1babf0b0-c885-4f9d-b008-5b0de0cb835d/resources')
	.post(educationModuleResource);

```