---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationSchema = {
   '@odata.type':'#microsoft.graph.synchronizationSchema',
   synchronizationRules: [
      {
         defaultValue: '',
         exportMissingReferences: false,
         flowBehavior: 'FlowWhenChanged',
         flowType: 'Always',
         matchingPriority: 0,
         source: {
            expression: '[extensionAttribute11]',
            name: 'extensionAttribute11',
            parameters: [],
            type: 'Attribute'
         },
         targetAttributeName: 'timezone'
      }
   ]
};

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema')
	.put(synchronizationSchema);

```