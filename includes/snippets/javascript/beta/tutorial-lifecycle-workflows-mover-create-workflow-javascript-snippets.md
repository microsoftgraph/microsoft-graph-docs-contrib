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
    description: 'Configure mover tasks for a user moved to the Sales department.',
    displayName: 'Added to Sales department workflow',
    isEnabled: true,
    isSchedulingEnabled: true,
    executionConditions: {
        '@odata.type': '#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions',
        scope: {
            '@odata.type': '#microsoft.graph.identityGovernance.ruleBasedSubjectSet',
            rule: '(department eq \'Sales\')'
        },
        trigger: {
            '@odata.type': '#microsoft.graph.identityGovernance.attributeChangeTrigger',
            triggerAttributes: [
                {
                    name: 'department'
                }
            ]
        }
    },
    tasks: [
        {
            continueOnError: false,
            description: 'Send email to moving employee\'s manager',
            displayName: 'Notify manager of move',
            isEnabled: true,
            taskDefinitionId: 'aab41899-9972-422a-9d97-f626014578b7',
            arguments: []
        }
    ]
};

await client.api('/identityGovernance/lifecycleWorkflows/workflows')
	.version('beta')
	.post(workflow);

```