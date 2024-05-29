---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review_history_definition import AccessReviewHistoryDefinition
from msgraph.generated.models.access_review_history_decision_filter import AccessReviewHistoryDecisionFilter
from msgraph.generated.models.access_review_scope import AccessReviewScope
from msgraph.generated.models.access_review_query_scope import AccessReviewQueryScope

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewHistoryDefinition(
	display_name = "Last quarter's group reviews April 2021",
	decisions = [
		AccessReviewHistoryDecisionFilter.Approve,
		AccessReviewHistoryDecisionFilter.Deny,
		AccessReviewHistoryDecisionFilter.DontKnow,
		AccessReviewHistoryDecisionFilter.NotReviewed,
		AccessReviewHistoryDecisionFilter.NotNotified,
	],
	review_history_period_start_date_time = "2021-01-01T00:00:00Z",
	review_history_period_end_date_time = "2021-04-30T23:59:59Z",
	scopes = [
		AccessReviewQueryScope(
			odata_type = "#microsoft.graph.accessReviewQueryScope",
			query_type = "MicrosoftGraph",
			query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
			query_root = None,
		),
		AccessReviewQueryScope(
			odata_type = "#microsoft.graph.accessReviewQueryScope",
			query_type = "MicrosoftGraph",
			query = "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
			query_root = None,
		),
	],
)

result = await graph_client.identity_governance.access_reviews.history_definitions.post(request_body)


```