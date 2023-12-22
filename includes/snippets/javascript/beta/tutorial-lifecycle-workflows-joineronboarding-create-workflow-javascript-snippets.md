---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workflow = {
   displayName: 'Onboard pre-hire employee', 
   description: 'Configure pre-hire tasks for onboarding employees before their first day', 
   isEnabled: true, 
   isSchedulingEnabled: false,
   executionConditions: {
       '@odata.type': 'microsoft.graph.identityGovernance.triggerAndScopeBasedConditions',
        scope: {
            '@odata.type': 'microsoft.graph.identityGovernance.ruleBasedSubjectSet',
            rule: '(department eq \'Sales\')'
        },
        trigger: {
            '@odata.type': 'microsoft.graph.identityGovernance.timeBasedAttributeTrigger',
            timeBasedAttribute: 'employeeHireDate',
            offsetInDays: -2
        }
    }, 
   tasks: [ 
      {
         isEnabled: true, 
         category: 'Joiner',
         taskDefinitionId: '1b555e50-7f65-41d5-b514-5894a026d10d', 
         displayName: 'Generate TAP And Send Email', 
         description: 'Generate Temporary Access Pass and send via email to user\'s manager', 
         arguments: [ 
            { 
                name: 'tapLifetimeMinutes', 
                value: '480' 
            }, 
            { 
                name: 'tapIsUsableOnce', 
                value: 'true' 
            }
          ]
       }  
    ]     
};

await client.api('/identityGovernance/LifecycleWorkflows/workflows')
	.version('beta')
	.post(workflow);

```