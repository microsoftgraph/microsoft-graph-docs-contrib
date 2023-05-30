---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const inboundFlow = {
  '@odata.type': '#microsoft.graph.industryData.inboundFileFlow',
  'dataConnector@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271',
  dataDomain: 'educationRostering',
  displayName: 'Inbound rostering flow',
  effectiveDateTime: '2023-03-12T16:40:46.924769+05:30',
  expirationDateTime: '2023-03-13T16:40:46.924769+05:30',
  'year@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb'
};

await client.api('/external/industryData/inboundFlows')
	.version('beta')
	.post(inboundFlow);

```