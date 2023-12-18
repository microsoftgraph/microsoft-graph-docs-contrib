---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
    displayName: 'New Managers March 2017',
    description: 'New Managers training course for March 2017',
    groupTypes: [
        'Unified'
    ],
    mailEnabled: true,
    mailNickname: 'newMan201703',
    securityEnabled: false,
    graphlearn_courses: {
        courseId: '123',
        courseName: 'New Managers',
        courseType: 'Online'
    }
};

await client.api('/groups')
	.post(group);

```