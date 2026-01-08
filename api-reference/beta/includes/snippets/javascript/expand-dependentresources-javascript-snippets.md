---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignmentResource = await client.api('/education/classes/de45722a-c202-43a9-9dd5-d82c45bcef91/assignments/4d1ecd2d-c913-41ba-be3c-d896b65d09f0/resources/ae7beedb-488d-4534-9307-3fbc2fac29b4')
	.version('beta')
	.expand('dependentResources')
	.get();

```