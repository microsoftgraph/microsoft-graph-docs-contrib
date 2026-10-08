---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.communications.calls.item.participants.item.report_synthetic_media.report_synthetic_media_post_request_body import ReportSyntheticMediaPostRequestBody
from msgraph_beta.generated.models.detection_severity import DetectionSeverity
from msgraph_beta.generated.models.media_metadata import MediaMetadata
from msgraph_beta.generated.models.content_modality import ContentModality
from msgraph_beta.generated.models.audio_metadata import AudioMetadata
from msgraph_beta.generated.models.streaming_metadata import StreamingMetadata
from msgraph_beta.generated.models.synthetic_media_detection_detail import SyntheticMediaDetectionDetail
from msgraph_beta.generated.models.media_segment import MediaSegment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReportSyntheticMediaPostRequestBody(
	id = UUID("a1b2c3d4-e5f6-7890-abcd-ef1234567890"),
	detection_date_time = "2026-03-13T21:00:00Z",
	severity = DetectionSeverity.High,
	overall_confidence = 0.92,
	is_malicious = True,
	content_metadata = MediaMetadata(
		modality = ContentModality.Audio,
		is_real_time = True,
		mime_type = "audio/pcm",
		byte_size = 0,
		duration = 15,
		audio_metadata = AudioMetadata(
			sample_rate_hz = 16000,
			bit_depth = 16,
			channels = 1,
		),
		streaming_metadata = StreamingMetadata(
			latency_ms = 50,
			frame_drop_rate = 0,
			network_jitter_ms = 10,
		),
	),
	detections = [
		SyntheticMediaDetectionDetail(
			model_name = "DeepfakeDetector-v2",
			modality = ContentModality.Audio,
			model_tasks = [
				"voiceClone",
			],
			segment = MediaSegment(
				start_time_sec = 0,
				end_time_sec = 15,
				frame_indices = [
				],
			),
			confidence = 0.95,
		),
	],
)

await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').report_synthetic_media.post(request_body)


```