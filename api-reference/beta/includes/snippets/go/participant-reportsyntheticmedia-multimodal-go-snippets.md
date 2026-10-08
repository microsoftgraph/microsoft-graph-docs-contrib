---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-beta-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphcommunications.NewReportSyntheticMediaPostRequestBody()
id := uuid.MustParse("b2c3d4e5-f6a7-8901-bcde-f23456789012")
requestBody.SetId(&id) 
detectionDateTime , err := time.Parse(time.RFC3339, "2026-03-13T21:10:00Z")
requestBody.SetDetectionDateTime(&detectionDateTime) 
severity := graphmodels.HIGH_DETECTIONSEVERITY 
requestBody.SetSeverity(&severity) 
overallConfidence := float64(0.94)
requestBody.SetOverallConfidence(&overallConfidence) 
isMalicious := true
requestBody.SetIsMalicious(&isMalicious) 
contentMetadata := graphmodels.NewMediaMetadata()
modality := graphmodels.MULTIMODAL_CONTENTMODALITY 
contentMetadata.SetModality(&modality) 
isRealTime := true
contentMetadata.SetIsRealTime(&isRealTime) 
mimeType := "video/mp4"
contentMetadata.SetMimeType(&mimeType) 
byteSize := int64(0)
contentMetadata.SetByteSize(&byteSize) 
duration := int32(20)
contentMetadata.SetDuration(&duration) 
audioMetadata := graphmodels.NewAudioMetadata()
sampleRateHz := int32(16000)
audioMetadata.SetSampleRateHz(&sampleRateHz) 
bitDepth := int32(16)
audioMetadata.SetBitDepth(&bitDepth) 
channels := int32(1)
audioMetadata.SetChannels(&channels) 
contentMetadata.SetAudioMetadata(audioMetadata)
videoMetadata := graphmodels.NewVideoMetadata()
codec := "H.264"
videoMetadata.SetCodec(&codec) 
frameRate := float64(30)
videoMetadata.SetFrameRate(&frameRate) 
bitrateKbps := int32(512)
videoMetadata.SetBitrateKbps(&bitrateKbps) 
contentMetadata.SetVideoMetadata(videoMetadata)
streamingMetadata := graphmodels.NewStreamingMetadata()
latencyMs := int32(50)
streamingMetadata.SetLatencyMs(&latencyMs) 
frameDropRate := float64(0)
streamingMetadata.SetFrameDropRate(&frameDropRate) 
networkJitterMs := int32(10)
streamingMetadata.SetNetworkJitterMs(&networkJitterMs) 
contentMetadata.SetStreamingMetadata(streamingMetadata)
requestBody.SetContentMetadata(contentMetadata)


syntheticMediaDetectionDetail := graphmodels.NewSyntheticMediaDetectionDetail()
modelName := "VoiceCloneDetector-v1"
syntheticMediaDetectionDetail.SetModelName(&modelName) 
modality := graphmodels.AUDIO_CONTENTMODALITY 
syntheticMediaDetectionDetail.SetModality(&modality) 
modelTasks := []string {
	"voiceClone",
}
syntheticMediaDetectionDetail.SetModelTasks(modelTasks)
segment := graphmodels.NewMediaSegment()
startTimeSec := int32(0)
segment.SetStartTimeSec(&startTimeSec) 
endTimeSec := int32(20)
segment.SetEndTimeSec(&endTimeSec) 
frameIndices := []graph.numberable {

}
segment.SetFrameIndices(frameIndices)
syntheticMediaDetectionDetail.SetSegment(segment)
confidence := float64(0.93)
syntheticMediaDetectionDetail.SetConfidence(&confidence) 
syntheticMediaDetectionDetail1 := graphmodels.NewSyntheticMediaDetectionDetail()
modelName := "FaceSwapDetector-v3"
syntheticMediaDetectionDetail1.SetModelName(&modelName) 
modality := graphmodels.VIDEO_CONTENTMODALITY 
syntheticMediaDetectionDetail1.SetModality(&modality) 
modelTasks := []string {
	"faceSwap",
	"lipSync",
}
syntheticMediaDetectionDetail1.SetModelTasks(modelTasks)
segment := graphmodels.NewMediaSegment()
startTimeSec := int32(5)
segment.SetStartTimeSec(&startTimeSec) 
endTimeSec := int32(18)
segment.SetEndTimeSec(&endTimeSec) 
frameIndices := []graph.Numberable {
 := int32(150)
segment.Set(&) 
 := int32(180)
segment.Set(&) 
 := int32(210)
segment.Set(&) 
 := int32(240)
segment.Set(&)
}
segment.SetFrameIndices(frameIndices)
syntheticMediaDetectionDetail1.SetSegment(segment)
confidence := float64(0.95)
syntheticMediaDetectionDetail1.SetConfidence(&confidence) 

detections := []graphmodels.SyntheticMediaDetectionDetailable {
	syntheticMediaDetectionDetail,
	syntheticMediaDetectionDetail1,
}
requestBody.SetDetections(detections)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Communications().Calls().ByCallId("call-id").Participants().ByParticipantId("participant-id").ReportSyntheticMedia().Post(context.Background(), requestBody, nil)


```