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
from msgraph_beta.generated.models.video_metadata import VideoMetadata
from msgraph_beta.generated.models.synthetic_media_detection_detail import SyntheticMediaDetectionDetail
from msgraph_beta.generated.models.media_segment import MediaSegment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReportSyntheticMediaPostRequestBody(
	id = UUID("c3d4e5f6-a7b8-9012-cdef-345678901234"),
	detection_date_time = "2026-03-13T21:05:00Z",
	severity = DetectionSeverity.High,
	overall_confidence = 0.91,
	is_malicious = True,
	content_metadata = MediaMetadata(
		modality = ContentModality.Video,
		is_real_time = False,
		mime_type = "video/mp4",
		byte_size = 2048000,
		duration = 30,
		video_metadata = VideoMetadata(
			codec = "H.264",
			frame_rate = 30,
			bitrate_kbps = 512,
		),
	),
	detections = [
		SyntheticMediaDetectionDetail(
			model_name = "FaceSwapDetector-v3",
			modality = ContentModality.Video,
			model_tasks = [
				"faceSwap",
				"lipSync",
			],
			segment = MediaSegment(
				start_time_sec = 0,
				end_time_sec = 0,
				frame_indices = [
					150,
					180,
					210,
					240,
				],
			),
			confidence = 0.91,
		),
	],
)

await graph_client.communications.calls.by_call_id('call-id').participants.by_participant_id('participant-id').report_synthetic_media.post(request_body)


```