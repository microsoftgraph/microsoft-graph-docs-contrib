---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessReviewInstance()
scope = PrincipalResourceMembershipsScope()
scope.@odata_type = '#microsoft.graph.principalResourceMembershipsScope'

principal_scopes_access_review_scope1 = AccessReviewQueryScope()
principal_scopes_access_review_scope1.@odata_type = '#microsoft.graph.accessReviewQueryScope'

principal_scopes_access_review_scope1.query = '/v1.0/users'

principal_scopes_access_review_scope1.query_type = 'MicrosoftGraph'


principalScopesArray []= principalScopesAccessReviewScope1;
principal_scopes_access_review_scope2 = AccessReviewQueryScope()
principal_scopes_access_review_scope2.@odata_type = '#microsoft.graph.accessReviewQueryScope'

principal_scopes_access_review_scope2.query = '/v1.0/groups'

principal_scopes_access_review_scope2.query_type = 'MicrosoftGraph'


principalScopesArray []= principalScopesAccessReviewScope2;
scope.principalscopes(principalScopesArray)


resource_scopes_access_review_scope1 = AccessReviewQueryScope()
resource_scopes_access_review_scope1.@odata_type = '#microsoft.graph.accessReviewQueryScope'

resource_scopes_access_review_scope1.query = '/beta/roleManagement/directory/roleDefinitions/9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3'

resource_scopes_access_review_scope1.query_type = 'MicrosoftGraph'


resourceScopesArray []= resourceScopesAccessReviewScope1;
scope.resourcescopes(resourceScopesArray)



request_body.scope = scope
reviewers_access_review_reviewer_scope1 = AccessReviewReviewerScope()
reviewers_access_review_reviewer_scope1.query = '/users/1ed8ac56-4827-4733-8f80-86adc2e67db5'

reviewers_access_review_reviewer_scope1.query_type = 'MicrosoftGraph'


reviewersArray []= reviewersAccessReviewReviewerScope1;
request_body.reviewers(reviewersArray)


fallback_reviewers_access_review_reviewer_scope1 = AccessReviewReviewerScope()
fallback_reviewers_access_review_reviewer_scope1.query = '/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e'

fallback_reviewers_access_review_reviewer_scope1.query_type = 'MicrosoftGraph'


fallbackReviewersArray []= fallbackReviewersAccessReviewReviewerScope1;
fallback_reviewers_access_review_reviewer_scope2 = AccessReviewReviewerScope()
fallback_reviewers_access_review_reviewer_scope2.query = '/users/1ed8ac56-4827-4733-8f80-86adc2e67db5'

fallback_reviewers_access_review_reviewer_scope2.query_type = 'MicrosoftGraph'


fallbackReviewersArray []= fallbackReviewersAccessReviewReviewerScope2;
request_body.fallbackreviewers(fallbackReviewersArray)





result = await client.identity_governance.acce_reviews.definitions.by_definition_id('accessReviewScheduleDefinition-id').instances.by_instance_id('accessReviewInstance-id').patch(request_body = request_body)


```