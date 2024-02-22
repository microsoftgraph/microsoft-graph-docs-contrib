---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review import AccessReview
from msgraph.generated.models.identity import Identity
from msgraph.generated.models.access_review_reviewer import AccessReviewReviewer
from msgraph.generated.models.access_review_settings import AccessReviewSettings
from msgraph.generated.models.access_review_recurrence_settings import AccessReviewRecurrenceSettings
from msgraph.generated.models.auto_review_settings import AutoReviewSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReview(
	display_name = "TestReview",
	start_date_time = "2017-02-10T00:35:53.214Z",
	end_date_time = "2017-03-12T00:35:53.214Z",
	reviewed_entity = Identity(
		id = "99025615-a0b1-47ec-9117-35377b10998b",
	),
	reviewer_type = "delegated",
	business_flow_template_id = "6e4f3d20-c5c3-407f-9695-8460952bcc68",
	description = "Sample description",
	reviewers = [
		AccessReviewReviewer(
			id = "f260246a-09b1-4fd5-8d18-daed736071ec",
		),
		AccessReviewReviewer(
			id = "5a4e184c-4ee5-4883-96e9-b371f8da88e3",
		),
	],
	settings = AccessReviewSettings(
		mail_notifications_enabled = True,
		reminders_enabled = True,
		justification_required_on_approval = True,
		auto_review_enabled = False,
		activity_duration_in_days = 30,
		auto_apply_review_results_enabled = False,
		access_recommendations_enabled = False,
		recurrence_settings = AccessReviewRecurrenceSettings(
			recurrence_type = "onetime",
			recurrence_end_type = "endBy",
			duration_in_days = 0,
			recurrence_count = 0,
		),
		auto_review_settings = AutoReviewSettings(
			not_reviewed_result = "Deny",
		),
	),
)

result = await graph_client.access_reviews.post(request_body)


```