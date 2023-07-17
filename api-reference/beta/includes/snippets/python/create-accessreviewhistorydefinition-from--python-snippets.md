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

scopes_access_review_scope1 = AccessReviewQueryScope()
scopes_access_review_scope1.@odata_type = '#microsoft.graph.accessReviewQueryScope'

scopes_access_review_scope1.query_type = 'MicrosoftGraph'

scopes_access_review_scope1.query = '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')'

scopes_access_review_scope1.queryRoot=null


scopesArray []= scopesAccessReviewScope1;
scopes_access_review_scope2 = AccessReviewQueryScope()
scopes_access_review_scope2.@odata_type = '#microsoft.graph.accessReviewQueryScope'

scopes_access_review_scope2.query_type = 'MicrosoftGraph'

scopes_access_review_scope2.query = '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')'

scopes_access_review_scope2.queryRoot=null


scopesArray []= scopesAccessReviewScope2;
request_body.scopes(scopesArray)





result = await client.identity_governance.acce_reviews.history_definitions.post(request_body = request_body)


```