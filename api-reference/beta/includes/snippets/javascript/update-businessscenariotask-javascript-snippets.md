---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const businessScenarioTask = {
  '@odata.type': '#microsoft.graph.businessScenarioTask',
  title: 'Customer order #12010',
  percentComplete: 20,
  priority: 1,
  businessScenarioProperties: {
    externalObjectVersion: '000003'
  }
};

await client.api('/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks/pmc1rS1Io0C3rXQhyXIsNmUAOeIi')
	.version('beta')
	.update(businessScenarioTask);

```