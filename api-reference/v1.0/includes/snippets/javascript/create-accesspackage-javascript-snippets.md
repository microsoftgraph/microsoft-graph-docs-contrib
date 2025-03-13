---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackage = {
  displayName: 'sales reps',
  description: 'outside sales representatives',
  isHidden: false,
  catalog: {
    id: '66584aae-98bb-48cc-9458-7bee5d2a6577'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages')
	.post(accessPackage);

```