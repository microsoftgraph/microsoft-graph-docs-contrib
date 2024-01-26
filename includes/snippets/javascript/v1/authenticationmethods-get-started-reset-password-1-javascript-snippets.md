---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordResetResponse = {
    newPassword: '29sdjfw#fajsdA_a_3an3223'
};

await client.api('/users/CameronW@Contoso.com/authentication/passwordMethods/28c10230-6103-485e-b985-444c60001490/resetPassword')
	.post(passwordResetResponse);

```