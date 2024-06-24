---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const schemaExtension = {
    id: 'bellowscollege_courses',
    description: 'Bellows College training courses extensions',
    targetTypes: [
        'Group'
    ],
    owner: 'd1e6f196-fca3-48ad-8cd3-1a98e3bd46d2',
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
        }
    ]
};

await client.api('/schemaExtensions')
	.post(schemaExtension);

```