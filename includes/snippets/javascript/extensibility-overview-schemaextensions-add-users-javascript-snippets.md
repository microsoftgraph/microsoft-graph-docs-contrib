---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    accountEnabled: true,
    displayName: 'Adele Vance',
    mailNickname: 'AdeleV',
    userPrincipalName: 'AdeleV@m365x72712789.onmicrosoft.com',
    passwordProfile: {
        forceChangePasswordNextSignIn: false,
        password: 'xWwvJ]6NMw+bWH-d'
    },
    extkmpdyld2_graphLearnCourses: {
        courseId: 100,
        courseName: 'Explore Microsoft Graph',
        courseType: 'Online'
    }
};

await client.api('/users')
	.version('beta')
	.post(user);

```