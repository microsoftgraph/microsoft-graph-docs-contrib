---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const checkInClaim = {
  '@odata.type': '#microsoft.graph.checkInClaim',
  calendarEventId: '040000008200E00074C5B7101A82E00800000000D02AC02D26EFDB010000000000000000100000005A18ADA04F0A24489AE13ED3CC367978',
  checkInMethod: 'verified'
};

await client.api('/places/c8aaf4d8-6c73-46c4-bf28-b2adadafb5be/checkIns')
	.version('beta')
	.post(checkInClaim);

```