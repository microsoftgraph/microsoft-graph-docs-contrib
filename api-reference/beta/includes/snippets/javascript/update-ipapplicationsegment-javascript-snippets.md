---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ipApplicationSegment = {
    destinationHost: '1.2.8.10',
    destinationType: 'ip',
    ports: [
        '255-255'
    ],
    protocol: 'tcp, udp'
};

await client.api('/applications/dcc40202-6223-488b-8e64-28aa1a803d6c/onPremisesPublishing/segmentsConfiguration/microsoft.graph.IpSegmentConfiguration/ApplicationSegments/bcfcfb39-0490-471c-9bf6-9e4e41cc6e0e')
	.version('beta')
	.update(ipApplicationSegment);

```