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
        '@odata.type': '#microsoft.graph.educationExcelResource',
        displayName: 'test_excel_file.xlsx',
        file: {
            odataid: 'https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ5DL55LC4M35VEZWBZFJCX5V4QO'
        }
    }
};

await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/modules/6a8242df-f2b6-4fdb-9b80-66b847ef8e75/resources')
	.post(educationModuleResource);

```