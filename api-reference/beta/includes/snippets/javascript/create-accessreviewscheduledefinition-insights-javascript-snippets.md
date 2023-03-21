---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessReviewScheduleDefinition = {
    displayName: 'Test create',
    descriptionForAdmins: 'New scheduled access review',
    descriptionForReviewers: 'If you have any questions, contact jerry@contoso.com',
    scope: {
        '@odata.type': '#microsoft.graph.accessReviewQueryScope',
        query: '/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers',
        queryType: 'MicrosoftGraph'
    },
    reviewers: [
        {
            query: '/users/398164b1-5196-49dd-ada2-364b49f99b27',
            queryType: 'MicrosoftGraph'
        }
    ],
    settings: {
        instanceDurationInDays: 1,
        recurrence: {
            pattern: {
                type: 'weekly',
                interval: 1
            },
            range: {
                type: 'noEnd',
                startDate: '2020-09-08T12:02:30.667Z'
            }
        },
        recommendationInsightSettings: [
            {
                '@odata.type': '#microsoft.graph.userLastSignInRecommendationInsightSetting',
                recommendationLookBackDuration: 'P30D',
                signInScope: 'tenant'
            },
            {
                '@odata.type': '#microsoft.graph.groupPeerOutlierRecommendationInsightSettings'
            }
        ]
    }
};

await client.api('/identityGovernance/accessReviews/definitions')
	.version('beta')
	.post(accessReviewScheduleDefinition);

```