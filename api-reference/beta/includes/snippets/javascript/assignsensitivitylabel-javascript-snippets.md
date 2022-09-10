---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignSensitivityLabel = {
  sensitivityLabelId: '5feba255-812e-446a-ac59-a7044ef827b5',
  assignmentMethod: 'standard',
  justificationText: 'test_justification'
};

await client.api('/drive/root/items/016GVDAP3RCQS5VBQHORFIVU2ZMOSBL25U/assignSensitivityLabel')
	.version('beta')
	.post(assignSensitivityLabel);

```