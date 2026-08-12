---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody reportSyntheticMediaPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody();
reportSyntheticMediaPostRequestBody.setId(UUID.fromString("b2c3d4e5-f6a7-8901-bcde-f23456789012"));
OffsetDateTime detectionDateTime = OffsetDateTime.parse("2026-03-13T21:10:00Z");
reportSyntheticMediaPostRequestBody.setDetectionDateTime(detectionDateTime);
reportSyntheticMediaPostRequestBody.setSeverity(DetectionSeverity.High);
reportSyntheticMediaPostRequestBody.setOverallConfidence(0.94d);
reportSyntheticMediaPostRequestBody.setIsMalicious(true);
MediaMetadata contentMetadata = new MediaMetadata();
contentMetadata.setModality(ContentModality.Multimodal);
contentMetadata.setIsRealTime(true);
contentMetadata.setMimeType("video/mp4");
contentMetadata.setByteSize(0L);
contentMetadata.setDuration(20);
AudioMetadata audioMetadata = new AudioMetadata();
audioMetadata.setSampleRateHz(16000);
audioMetadata.setBitDepth(16);
audioMetadata.setChannels(1);
contentMetadata.setAudioMetadata(audioMetadata);
VideoMetadata videoMetadata = new VideoMetadata();
videoMetadata.setCodec("H.264");
videoMetadata.setFrameRate(30d);
videoMetadata.setBitrateKbps(512);
contentMetadata.setVideoMetadata(videoMetadata);
StreamingMetadata streamingMetadata = new StreamingMetadata();
streamingMetadata.setLatencyMs(50);
streamingMetadata.setFrameDropRate(0d);
streamingMetadata.setNetworkJitterMs(10);
contentMetadata.setStreamingMetadata(streamingMetadata);
reportSyntheticMediaPostRequestBody.setContentMetadata(contentMetadata);
LinkedList<SyntheticMediaDetectionDetail> detections = new LinkedList<SyntheticMediaDetectionDetail>();
SyntheticMediaDetectionDetail syntheticMediaDetectionDetail = new SyntheticMediaDetectionDetail();
syntheticMediaDetectionDetail.setModelName("VoiceCloneDetector-v1");
syntheticMediaDetectionDetail.setModality(ContentModality.Audio);
LinkedList<String> modelTasks = new LinkedList<String>();
modelTasks.add("voiceClone");
syntheticMediaDetectionDetail.setModelTasks(modelTasks);
MediaSegment segment = new MediaSegment();
segment.setStartTimeSec(0);
segment.setEndTimeSec(20);
LinkedList<Number> frameIndices = new LinkedList<Number>();
segment.setFrameIndices(frameIndices);
syntheticMediaDetectionDetail.setSegment(segment);
syntheticMediaDetectionDetail.setConfidence(0.93d);
detections.add(syntheticMediaDetectionDetail);
SyntheticMediaDetectionDetail syntheticMediaDetectionDetail1 = new SyntheticMediaDetectionDetail();
syntheticMediaDetectionDetail1.setModelName("FaceSwapDetector-v3");
syntheticMediaDetectionDetail1.setModality(ContentModality.Video);
LinkedList<String> modelTasks1 = new LinkedList<String>();
modelTasks1.add("faceSwap");
modelTasks1.add("lipSync");
syntheticMediaDetectionDetail1.setModelTasks(modelTasks1);
MediaSegment segment1 = new MediaSegment();
segment1.setStartTimeSec(5);
segment1.setEndTimeSec(18);
LinkedList<Number> frameIndices1 = new LinkedList<Number>();
frameIndices1.add(150);
frameIndices1.add(180);
frameIndices1.add(210);
frameIndices1.add(240);
segment1.setFrameIndices(frameIndices1);
syntheticMediaDetectionDetail1.setSegment(segment1);
syntheticMediaDetectionDetail1.setConfidence(0.95d);
detections.add(syntheticMediaDetectionDetail1);
reportSyntheticMediaPostRequestBody.setDetections(detections);
graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").reportSyntheticMedia().post(reportSyntheticMediaPostRequestBody);


```