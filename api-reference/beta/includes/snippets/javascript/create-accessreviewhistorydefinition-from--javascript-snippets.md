---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewHistoryDefinition = {
  displayName: 'Last quarter\'s group reviews April 2021',
  decisions: [
    'approve',
    'deny',
    'dontKnow',
    'notReviewed',
    'notNotified'
  ],
  scheduleSettings: {
      reportRange: 'P1M',
      recurrence: {
          pattern: {
              type: 'monthly',
              interval: 1
          },
          range: {
              type: 'noEnd',
              startDate: '2018-08-03T21:02:30.667Z',
              count: 0
          }
        }
  },
  scopes: [
    {
      '@odata.type': '#microsoft.graph.accessReviewQueryScope',
      queryType: 'MicrosoftGraph',     
      query: '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')',
      queryRoot: null
    },  
    {
      '@odata.type': '#microsoft.graph.accessReviewQueryScope',
      queryType: 'MicrosoftGraph',     
      query: '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')',
      queryRoot: null
    }
  ]
};

await client.api('/identityGovernance/accessReviews/historyDefinitions')
	.version('beta')
	.post(accessReviewHistoryDefinition);

```