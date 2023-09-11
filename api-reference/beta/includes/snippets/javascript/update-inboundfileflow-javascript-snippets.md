---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inboundFlow = {
  '@odata.type': '#microsoft.graph.industryData.inboundFlow',
  displayName: 'My Inbound Flow',
  effectiveDateTime: '2022-03-12T16:40:46.924769+05:30',
  expirationDateTime: '2023-03-12T16:40:46.924769+05:30'
};

await client.api('/external/industryData/inboundFlows/7bd62d17-8c37-4494-f68d-08daddab2911')
	.version('beta')
	.update(inboundFlow);

```