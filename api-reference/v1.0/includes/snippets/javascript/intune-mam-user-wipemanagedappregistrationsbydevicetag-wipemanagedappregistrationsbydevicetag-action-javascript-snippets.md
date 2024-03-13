---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const wipeManagedAppRegistrationsByDeviceTag = {
  deviceTag: 'Device Tag value'
};

await client.api('/users/{usersId}/wipeManagedAppRegistrationsByDeviceTag')
	.post(wipeManagedAppRegistrationsByDeviceTag);

```