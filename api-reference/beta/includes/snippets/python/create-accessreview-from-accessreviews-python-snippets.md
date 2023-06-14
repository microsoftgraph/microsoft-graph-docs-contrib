---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessReview()
request_body.display_name = 'TestReview'

request_body.startDateTime = DateTime('2017-02-10T00:35:53.214Z')

request_body.endDateTime = DateTime('2017-03-12T00:35:53.214Z')

reviewed_entity = Identity()
reviewed_entity.id = '99025615-a0b1-47ec-9117-35377b10998b'


request_body.reviewed_entity = reviewed_entity
request_body.reviewer_type = 'delegated'

request_body.business_flow_template_id = '6e4f3d20-c5c3-407f-9695-8460952bcc68'

request_body.description = 'Sample description'

reviewers_access_review_reviewer1 = AccessReviewReviewer()
reviewers_access_review_reviewer1.id = 'f260246a-09b1-4fd5-8d18-daed736071ec'


reviewersArray []= reviewersAccessReviewReviewer1;
reviewers_access_review_reviewer2 = AccessReviewReviewer()
reviewers_access_review_reviewer2.id = '5a4e184c-4ee5-4883-96e9-b371f8da88e3'


reviewersArray []= reviewersAccessReviewReviewer2;
request_body.reviewers(reviewersArray)


settings = AccessReviewSettings()
settings.mail_notifications_enabled = True

settings.reminders_enabled = True

settings.justification_required_on_approval = True

settings.auto_review_enabled = False

settings.ActivityDurationInDays = 30

settings.auto_apply_review_results_enabled = False

settings.access_recommendations_enabled = False

settingsrecurrence_settings = AccessReviewRecurrenceSettings()
settingsrecurrence_settings.recurrence_type = 'onetime'

settingsrecurrence_settings.recurrence_end_type = 'endBy'

settingsrecurrence_settings.DurationInDays = 0

settingsrecurrence_settings.RecurrenceCount = 0


settings.recurrence_settings = settingsrecurrence_settings
settingsauto_review_settings = AutoReviewSettings()
settingsauto_review_settings.not_reviewed_result = 'Deny'


settings.auto_review_settings = settingsauto_review_settings

request_body.settings = settings



result = await client.access_reviews.post(request_body = request_body)


```