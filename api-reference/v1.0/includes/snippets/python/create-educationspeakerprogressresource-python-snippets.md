---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_resource import EducationAssignmentResource
from msgraph.generated.models.education_speaker_progress_resource import EducationSpeakerProgressResource
from msgraph.generated.models.education_speaker_coach_settings import EducationSpeakerCoachSettings
from msgraph.generated.models.education_speaker_coach_delivery_settings import EducationSpeakerCoachDeliverySettings
from msgraph.generated.models.education_ai_feedback_criteria import EducationAiFeedbackCriteria
from msgraph.generated.models.education_speech_type import EducationSpeechType
from msgraph.generated.models.education_ai_feedback_settings import EducationAiFeedbackSettings
from msgraph.generated.models.education_ai_feedback_delivery_settings import EducationAiFeedbackDeliverySettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentResource(
	distribute_for_student_work = True,
	resource = EducationSpeakerProgressResource(
		odata_type = "microsoft.graph.educationSpeakerProgressResource",
		display_name = "speakerProgressTestResource",
		recording_time_limit_in_minutes = 5,
		show_rehearsal_report_to_student_before_media_upload = True,
		max_recording_attempts = 1,
		is_video_required = True,
		is_ai_feedback_enabled = True,
		presentation_title = "speakerProgressTestResource",
		spoken_language_locale = "en-US",
		speaker_coach_settings = EducationSpeakerCoachSettings(
			delivery_settings = EducationSpeakerCoachDeliverySettings(
				is_pronunciation_enabled = True,
			),
		),
		ai_feedback_criteria = EducationAiFeedbackCriteria(
			speech_type = EducationSpeechType.Informative,
			ai_feedback_settings = EducationAiFeedbackSettings(
				delivery_settings = EducationAiFeedbackDeliverySettings(
					is_style_enabled = True,
				),
			),
		),
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.post(request_body)


```