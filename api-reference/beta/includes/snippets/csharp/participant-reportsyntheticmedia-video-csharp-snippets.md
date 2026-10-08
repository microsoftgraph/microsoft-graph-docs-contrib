---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Communications.Calls.Item.Participants.Item.ReportSyntheticMedia;
using Microsoft.Graph.Beta.Models;

var requestBody = new ReportSyntheticMediaPostRequestBody
{
	Id = Guid.Parse("c3d4e5f6-a7b8-9012-cdef-345678901234"),
	DetectionDateTime = DateTimeOffset.Parse("2026-03-13T21:05:00Z"),
	Severity = DetectionSeverity.High,
	OverallConfidence = 0.91d,
	IsMalicious = true,
	ContentMetadata = new MediaMetadata
	{
		Modality = ContentModality.Video,
		IsRealTime = false,
		MimeType = "video/mp4",
		ByteSize = 2048000L,
		Duration = 30,
		VideoMetadata = new VideoMetadata
		{
			Codec = "H.264",
			FrameRate = 30d,
			BitrateKbps = 512,
		},
	},
	Detections = new List<SyntheticMediaDetectionDetail>
	{
		new SyntheticMediaDetectionDetail
		{
			ModelName = "FaceSwapDetector-v3",
			Modality = ContentModality.Video,
			ModelTasks = new List<string>
			{
				"faceSwap",
				"lipSync",
			},
			Segment = new MediaSegment
			{
				StartTimeSec = 0,
				EndTimeSec = 0,
				FrameIndices = new List<Number>
				{
					150,
					180,
					210,
					240,
				},
			},
			Confidence = 0.91d,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].ReportSyntheticMedia.PostAsync(requestBody);


```