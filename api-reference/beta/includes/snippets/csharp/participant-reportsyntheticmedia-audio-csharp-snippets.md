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
	Id = Guid.Parse("a1b2c3d4-e5f6-7890-abcd-ef1234567890"),
	DetectionDateTime = DateTimeOffset.Parse("2026-03-13T21:00:00Z"),
	Severity = DetectionSeverity.High,
	OverallConfidence = 0.92d,
	IsMalicious = true,
	ContentMetadata = new MediaMetadata
	{
		Modality = ContentModality.Audio,
		IsRealTime = true,
		MimeType = "audio/pcm",
		ByteSize = 0L,
		Duration = 15,
		AudioMetadata = new AudioMetadata
		{
			SampleRateHz = 16000,
			BitDepth = 16,
			Channels = 1,
		},
		StreamingMetadata = new StreamingMetadata
		{
			LatencyMs = 50,
			FrameDropRate = 0d,
			NetworkJitterMs = 10,
		},
	},
	Detections = new List<SyntheticMediaDetectionDetail>
	{
		new SyntheticMediaDetectionDetail
		{
			ModelName = "DeepfakeDetector-v2",
			Modality = ContentModality.Audio,
			ModelTasks = new List<string>
			{
				"voiceClone",
			},
			Segment = new MediaSegment
			{
				StartTimeSec = 0,
				EndTimeSec = 15,
				FrameIndices = new List<Number>
				{
				},
			},
			Confidence = 0.95d,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].ReportSyntheticMedia.PostAsync(requestBody);


```