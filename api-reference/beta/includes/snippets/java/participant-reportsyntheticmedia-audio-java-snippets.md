---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody reportSyntheticMediaPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody();
reportSyntheticMediaPostRequestBody.setId(UUID.fromString("a1b2c3d4-e5f6-7890-abcd-ef1234567890"));
OffsetDateTime detectionDateTime = OffsetDateTime.parse("2026-03-13T21:00:00Z");
reportSyntheticMediaPostRequestBody.setDetectionDateTime(detectionDateTime);
reportSyntheticMediaPostRequestBody.setSeverity(DetectionSeverity.High);
reportSyntheticMediaPostRequestBody.setOverallConfidence(0.92d);
reportSyntheticMediaPostRequestBody.setIsMalicious(true);
MediaMetadata contentMetadata = new MediaMetadata();
contentMetadata.setModality(ContentModality.Audio);
contentMetadata.setIsRealTime(true);
contentMetadata.setMimeType("audio/pcm");
contentMetadata.setByteSize(0L);
contentMetadata.setDuration(15);
AudioMetadata audioMetadata = new AudioMetadata();
audioMetadata.setSampleRateHz(16000);
audioMetadata.setBitDepth(16);
audioMetadata.setChannels(1);
contentMetadata.setAudioMetadata(audioMetadata);
StreamingMetadata streamingMetadata = new StreamingMetadata();
streamingMetadata.setLatencyMs(50);
streamingMetadata.setFrameDropRate(0d);
streamingMetadata.setNetworkJitterMs(10);
contentMetadata.setStreamingMetadata(streamingMetadata);
reportSyntheticMediaPostRequestBody.setContentMetadata(contentMetadata);
LinkedList<SyntheticMediaDetectionDetail> detections = new LinkedList<SyntheticMediaDetectionDetail>();
SyntheticMediaDetectionDetail syntheticMediaDetectionDetail = new SyntheticMediaDetectionDetail();
syntheticMediaDetectionDetail.setModelName("DeepfakeDetector-v2");
syntheticMediaDetectionDetail.setModality(ContentModality.Audio);
LinkedList<String> modelTasks = new LinkedList<String>();
modelTasks.add("voiceClone");
syntheticMediaDetectionDetail.setModelTasks(modelTasks);
MediaSegment segment = new MediaSegment();
segment.setStartTimeSec(0);
segment.setEndTimeSec(15);
LinkedList<Number> frameIndices = new LinkedList<Number>();
segment.setFrameIndices(frameIndices);
syntheticMediaDetectionDetail.setSegment(segment);
syntheticMediaDetectionDetail.setConfidence(0.95d);
detections.add(syntheticMediaDetectionDetail);
reportSyntheticMediaPostRequestBody.setDetections(detections);
graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").reportSyntheticMedia().post(reportSyntheticMediaPostRequestBody);


```