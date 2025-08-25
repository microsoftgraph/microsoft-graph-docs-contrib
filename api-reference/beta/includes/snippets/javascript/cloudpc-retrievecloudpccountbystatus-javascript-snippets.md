---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let retrieveCloudPcCountByStatus = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/retrieveCloudPcCountByStatus?customFilter=contains(tolower(managedDeviceName), \'a\') or contains(tolower(imageDisplayName), \'a\') or contains(tolower(userPrincipalName), \'a\')')
	.version('beta')
	.filter('contains(tolower(managedDeviceName), \'a\') or contains(tolower(imageDisplayName), \'a\') or contains(tolower(userPrincipalName), \'a\')')
	.get();

```