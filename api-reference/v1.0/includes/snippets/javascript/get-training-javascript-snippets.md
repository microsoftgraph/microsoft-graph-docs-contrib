---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let training = await client.api('/security/attackSimulation/trainings/21b2b7d1-11ae-a7a8-99c8-9029a4e70cc9')
	.get();

```