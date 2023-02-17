---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let openShift = await client.api('/teams/3d88b7a2-f988-4f4b-bb34-d66df66af126/schedule/openShifts/OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8')
	.version('beta')
	.get();

```