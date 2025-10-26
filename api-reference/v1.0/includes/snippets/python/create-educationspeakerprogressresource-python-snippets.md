---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_resource import EducationAssignmentResource
from msgraph.generated.models.education_resource import EducationResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentResource(
	distribute_for_student_work = True,
	resource = EducationResource(
		odata_type = "microsoft.graph.educationSpeakerProgressResource",
		display_name = "speakerProgressTestResource",
		additional_data = {
				"recording_time_limit_in_minutes" : 5,
				"show_rehearsal_report_to_student_before_media_upload" : True,
				"max_recording_attempts" : 1,
				"is_video_required" : True,
				"is_ai_feedback_enabled" : True,
				"presentation_title" : "speakerProgressTestResource",
				"spoken_language_locale" : "en-US",
				"speaker_coach_settings" : {
						"delivery_settings" : {
								"is_pronunciation_enabled" : True,
						},
				},
				"ai_feedback_criteria" : {
						"speech_type" : "informative",
						"ai_feedback_settings" : {
								"delivery_settings" : {
										"is_style_enabled" : True,
								},
						},
				},
		}
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.post(request_body)


```