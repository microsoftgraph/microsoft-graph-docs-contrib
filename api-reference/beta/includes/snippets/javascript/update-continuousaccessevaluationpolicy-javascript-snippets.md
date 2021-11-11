---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const continuousAccessEvaluationPolicy = {
  '@odata.type': '#microsoft.graph.continuousAccessEvaluationPolicy',
  migrate: true
};

await client.api('/identity/continuousAccessEvaluationPolicy')
	.version('beta')
	.update(continuousAccessEvaluationPolicy);

```