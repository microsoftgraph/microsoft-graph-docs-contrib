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
	Id = Guid.Parse("b2c3d4e5-f6a7-8901-bcde-f23456789012"),
	DetectionDateTime = DateTimeOffset.Parse("2026-03-13T21:10:00Z"),
	Severity = DetectionSeverity.High,
	OverallConfidence = 0.94d,
	IsMalicious = true,
	ContentMetadata = new MediaMetadata
	{
		Modality = ContentModality.Multimodal,
		IsRealTime = true,
		MimeType = "video/mp4",
		ByteSize = 0L,
		Duration = 20,
		AudioMetadata = new AudioMetadata
		{
			SampleRateHz = 16000,
			BitDepth = 16,
			Channels = 1,
		},
		VideoMetadata = new VideoMetadata
		{
			Codec = "H.264",
			FrameRate = 30d,
			BitrateKbps = 512,
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
			ModelName = "VoiceCloneDetector-v1",
			Modality = ContentModality.Audio,
			ModelTasks = new List<string>
			{
				"voiceClone",
			},
			Segment = new MediaSegment
			{
				StartTimeSec = 0,
				EndTimeSec = 20,
				FrameIndices = new List<Number>
				{
				},
			},
			Confidence = 0.93d,
		},
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
				StartTimeSec = 5,
				EndTimeSec = 18,
				FrameIndices = new List<Number>
				{
					150,
					180,
					210,
					240,
				},
			},
			Confidence = 0.95d,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Communications.Calls["{call-id}"].Participants["{participant-id}"].ReportSyntheticMedia.PostAsync(requestBody);


```