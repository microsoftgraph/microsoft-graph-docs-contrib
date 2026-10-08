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
    displayName: 'Remove existing target scope of a workflow',
    description: 'On-demand removal of the target scope of a workflow.',
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
            value: '5fa668df-a7b0-43fe-828d-48f7a1f7ca44'
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
    administrationScopeTargets: []
  }
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows/{workflowId}/createNewVersion')
	.post(workflow);

```