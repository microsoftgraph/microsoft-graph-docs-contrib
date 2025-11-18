---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewScheduleDefinition = {
  displayName: 'Review of catalog',
  descriptionForAdmins: 'Review of all resources in a catalog',
  descriptionForReviewers: 'If you have any questions, contact jerry@contoso.com',
  scope: {
    '@odata.type': '#microsoft.graph.accessReviewResourceScope',
    resourceScopes: [
      {
        resourceId: 'a45681aa-35f2-47c6-958b-741d6b09a033',
        displayName: 'My Catalog',
        scopeType: 'catalog'
      }
    ],
    principalScopes: [
      {
        '@odata.type': '#microsoft.graph.accessReviewPrincipalScope',
        scopeType: 'allUsers'
      }
    ]
  },
  reviewers: [
    {
      '@odata.type': '#microsoft.graph.accessReviewReviewerScope',
      scopeType: 'resourceOwner'
    }
  ],  
  settings: {
    mailNotificationsEnabled: true,
    reminderNotificationsEnabled: true,
    justificationRequiredOnApproval: true,
    defaultDecisionEnabled: false,
    defaultDecision: 'None',
    instanceDurationInDays: 1,
    recommendationsEnabled: true,
    recurrence: {
      pattern: {
        type: 'weekly',
        interval: 1
      },
      range: {
        type: 'noEnd',
        startDate: '2020-09-08T12:02:30.667Z'
      }
    }
  }
};

await client.api('/identityGovernance/accessReviews/definitions')
	.version('beta')
	.post(accessReviewScheduleDefinition);

```