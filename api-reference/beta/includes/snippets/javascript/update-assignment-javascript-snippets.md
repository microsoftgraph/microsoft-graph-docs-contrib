---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignment = {
  '@odata.type': '#microsoft.graph.cloudLicensing.assignment',
  disabledServicePlanIds: [
    'bed136c6-b799-4462-824d-fc045d3a9d25'
  ],
  'allotment@odata.bind': 'https://graph.microsoft.com/beta/admin/cloudLicensing/allotments/rkocgef3dgjhnu3gmu2mqhbdbmwcymnf6fk3k6a7zbui5e7gfpmi',
  'assignedTo@odata.bind': 'https://graph.microsoft.com/beta/users/6d645c5f-089f-40d8-b0e7-136fb5c56d5b'
};

await client.api('/me/cloudLicensing/assignments/0b1a424d-3b9b-4446-80b9-6917dd521e03')
	.version('beta')
	.update(assignment);

```