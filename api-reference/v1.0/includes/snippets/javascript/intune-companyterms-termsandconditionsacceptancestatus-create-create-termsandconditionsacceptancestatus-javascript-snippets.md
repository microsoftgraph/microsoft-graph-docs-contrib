---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const termsAndConditionsAcceptanceStatus = {
  '@odata.type': '#microsoft.graph.termsAndConditionsAcceptanceStatus',
  userDisplayName: 'User Display Name value',
  acceptedVersion: 15,
  acceptedDateTime: '2016-12-31T23:57:43.6165506-08:00',
  userPrincipalName: 'User Principal Name value'
};

await client.api('/deviceManagement/termsAndConditions/{termsAndConditionsId}/acceptanceStatuses')
	.post(termsAndConditionsAcceptanceStatus);

```