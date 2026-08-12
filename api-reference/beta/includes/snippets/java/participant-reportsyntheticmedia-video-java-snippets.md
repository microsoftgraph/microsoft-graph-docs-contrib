---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody reportSyntheticMediaPostRequestBody = new com.microsoft.graph.beta.communications.calls.item.participants.item.reportsyntheticmedia.ReportSyntheticMediaPostRequestBody();
reportSyntheticMediaPostRequestBody.setId(UUID.fromString("c3d4e5f6-a7b8-9012-cdef-345678901234"));
OffsetDateTime detectionDateTime = OffsetDateTime.parse("2026-03-13T21:05:00Z");
reportSyntheticMediaPostRequestBody.setDetectionDateTime(detectionDateTime);
reportSyntheticMediaPostRequestBody.setSeverity(DetectionSeverity.High);
reportSyntheticMediaPostRequestBody.setOverallConfidence(0.91d);
reportSyntheticMediaPostRequestBody.setIsMalicious(true);
MediaMetadata contentMetadata = new MediaMetadata();
contentMetadata.setModality(ContentModality.Video);
contentMetadata.setIsRealTime(false);
contentMetadata.setMimeType("video/mp4");
contentMetadata.setByteSize(2048000L);
contentMetadata.setDuration(30);
VideoMetadata videoMetadata = new VideoMetadata();
videoMetadata.setCodec("H.264");
videoMetadata.setFrameRate(30d);
videoMetadata.setBitrateKbps(512);
contentMetadata.setVideoMetadata(videoMetadata);
reportSyntheticMediaPostRequestBody.setContentMetadata(contentMetadata);
LinkedList<SyntheticMediaDetectionDetail> detections = new LinkedList<SyntheticMediaDetectionDetail>();
SyntheticMediaDetectionDetail syntheticMediaDetectionDetail = new SyntheticMediaDetectionDetail();
syntheticMediaDetectionDetail.setModelName("FaceSwapDetector-v3");
syntheticMediaDetectionDetail.setModality(ContentModality.Video);
LinkedList<String> modelTasks = new LinkedList<String>();
modelTasks.add("faceSwap");
modelTasks.add("lipSync");
syntheticMediaDetectionDetail.setModelTasks(modelTasks);
MediaSegment segment = new MediaSegment();
segment.setStartTimeSec(0);
segment.setEndTimeSec(0);
LinkedList<Number> frameIndices = new LinkedList<Number>();
frameIndices.add(150);
frameIndices.add(180);
frameIndices.add(210);
frameIndices.add(240);
segment.setFrameIndices(frameIndices);
syntheticMediaDetectionDetail.setSegment(segment);
syntheticMediaDetectionDetail.setConfidence(0.91d);
detections.add(syntheticMediaDetectionDetail);
reportSyntheticMediaPostRequestBody.setDetections(detections);
graphClient.communications().calls().byCallId("{call-id}").participants().byParticipantId("{participant-id}").reportSyntheticMedia().post(reportSyntheticMediaPostRequestBody);


```