---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessReviewHistoryDefinition()
request_body.display_name = 'Last quarter\'s group reviews April 2021'

request_body.Decisions([request_body.accessreviewhistorydecisionfilter(AccessReviewHistoryDecisionFilter.Approve('accessreviewhistorydecisionfilter.approve'))
request_body.accessreviewhistorydecisionfilter(AccessReviewHistoryDecisionFilter.Deny('accessreviewhistorydecisionfilter.deny'))
request_body.accessreviewhistorydecisionfilter(AccessReviewHistoryDecisionFilter.DontKnow('accessreviewhistorydecisionfilter.dontknow'))
request_body.accessreviewhistorydecisionfilter(AccessReviewHistoryDecisionFilter.NotReviewed('accessreviewhistorydecisionfilter.notreviewed'))
request_body.accessreviewhistorydecisionfilter(AccessReviewHistoryDecisionFilter.NotNotified('accessreviewhistorydecisionfilter.notnotified'))
])

request_body.reviewHistoryPeriodStartDateTime = DateTime('2021-01-01T00:00:00Z')

request_body.reviewHistoryPeriodEndDateTime = DateTime('2021-04-30T23:59:59Z')

scopes_access_review_scope1 = AccessReviewScope()
scopes_access_review_scope1.@odata_type = '#microsoft.graph.accessReviewQueryScope'

additional_data = [
'query_type' => 'MicrosoftGraph', 
'query' => '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')', 
'query_root' => 	null,
];
scopes_access_review_scope1.additional_data(additional_data)



scopesArray []= scopesAccessReviewScope1;
scopes_access_review_scope2 = AccessReviewScope()
scopes_access_review_scope2.@odata_type = '#microsoft.graph.accessReviewQueryScope'

additional_data = [
'query_type' => 'MicrosoftGraph', 
'query' => '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')', 
'query_root' => 	null,
];
scopes_access_review_scope2.additional_data(additional_data)



scopesArray []= scopesAccessReviewScope2;
request_body.scopes(scopesArray)





result = await client.identity_governance.acce_reviews.history_definitions.post(request_body = request_body)


```