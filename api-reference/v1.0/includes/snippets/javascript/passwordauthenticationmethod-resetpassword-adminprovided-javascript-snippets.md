---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const passwordResetResponse = {
    newPassword: 'Cuyo5459'
};

await client.api('/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0/authentication/methods/28c10230-6103-485e-b985-444c60001490/resetPassword')
	.post(passwordResetResponse);

```