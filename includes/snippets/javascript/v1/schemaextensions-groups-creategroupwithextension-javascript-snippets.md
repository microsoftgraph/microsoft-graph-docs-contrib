---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    displayName: 'New Managers March 2024',
    description: 'New Managers training course for March 2024',
    groupTypes: [
        'Unified'
    ],
    mailEnabled: true,
    mailNickname: 'newMan202403',
    securityEnabled: false,
    bellowscollege_courses: {
        courseId: '123',
        courseName: 'New Managers',
        courseType: 'Online'
    }
};

await client.api('/groups')
	.post(group);

```