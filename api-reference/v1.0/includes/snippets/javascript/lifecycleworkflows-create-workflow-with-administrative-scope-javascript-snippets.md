---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workflow = {
  category: 'mover',
  displayName: 'On Demand workflow move',
  description: 'Execute real-time tasks for employee job changes',
  tasks: [
    {
      arguments: [],
      description: 'Send email to notify user\'s manager of user move',
      displayName: 'Send email to notify manager of user move',
      isEnabled: true,
      continueOnError: false,
      taskDefinitionId: 'aab41899-9972-422a-9d97-f626014578b7',
      category: 'mover'
    }
  ],
  executionConditions: {
    '@odata.type': '#microsoft.graph.identityGovernance.onDemandExecutionOnly'
  },
  isEnabled: true,
  isSchedulingEnabled: false,
  administrationScopeTargets: [
    {
      '@odata.type': '#microsoft.graph.administrativeUnit',
      id: '4f9dc456-0574-4122-9e55-8b4cc494b27d'
    },
    {
      '@odata.type': '#microsoft.graph.administrativeUnit',
      id: '2c987843-e9b1-4b1a-b924-ff1d2a9b054d'
    }
  ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows')
	.post(workflow);

```