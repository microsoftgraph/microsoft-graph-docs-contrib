---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schemaExtension = {
    owner: 'ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa',
    properties: [
        {
            name: 'courseId',
            type: 'Integer'
        },
        {
            name: 'courseName',
            type: 'String'
        },
        {
            name: 'courseType',
            type: 'String'
        },
        {
            name: 'courseSupervisors',
            type: 'String'
        }
    ]
};

await client.api('/schemaExtensions/exto6x7sfft_courses')
	.update(schemaExtension);

```