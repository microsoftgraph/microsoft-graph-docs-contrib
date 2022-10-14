---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryCaseSettings = {
  '@odata.type': '#microsoft.graph.security.ediscoveryCaseSettings',
  redundancyDetection: {
    '@odata.type': 'microsoft.graph.security.redundancyDetectionSettings'
  },
  topicModeling: {
    '@odata.type': 'microsoft.graph.security.topicModelingSettings'
  },
  ocr: {
    '@odata.type': 'microsoft.graph.security.ocrSettings'
  }
};

await client.api('/security/cases/ediscoveryCases/{ediscoveryCaseId}/settings')
	.update(ediscoveryCaseSettings);

```