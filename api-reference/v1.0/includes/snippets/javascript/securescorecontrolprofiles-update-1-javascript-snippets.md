---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const secureScoreControlProfile = {
  assignedTo: '',
  comment: 'control is under 'Third Party' exception',
  state: 'Third Party',
  vendorInformation: {

    provider: 'SecureScore',
    providerVersion: null,
    subProvider: null,
    vendor: 'Microsoft'
  }
};

await client.api('/security/secureScoreControlProfiles/NonOwnerAccess')
	.update(secureScoreControlProfile);

```