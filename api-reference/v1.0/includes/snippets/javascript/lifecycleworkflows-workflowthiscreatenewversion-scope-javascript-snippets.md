---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workflow = {
  workflow: {
    category: 'mover',
    displayName: 'On Demand mover workflow',
    description: 'Execute real-time tasks for employee job changes',
    tasks: [
      {
        category: 'mover',
        continueOnError: false,
        description: 'Send email to notify user\'s manager of user move',
        displayName: 'Send email to notify manager of user move',
        executionSequence: 1,
        id: 'f09eb640-6c16-4f1a-8b48-6a295a307705',
        isEnabled: true,
        taskDefinitionId: 'aab41899-9972-422a-9d97-f626014578b7',
        arguments: []
      },
      {
        arguments: [
          {
            name: 'groupID',
            value: '8d1d1deb-2ef0-4f72-a460-729a1cc74e7e'
          }
        ],
        description: 'Add user to selected groups',
        displayName: 'Add user to groups',
        isEnabled: true,
        continueOnError: false,
        taskDefinitionId: '22085229-5809-45e8-97fd-270d28d66910',
        category: 'joiner,leaver,mover'
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
        id: '2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7'
      }
    ]
  }
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion')
	.post(workflow);

```