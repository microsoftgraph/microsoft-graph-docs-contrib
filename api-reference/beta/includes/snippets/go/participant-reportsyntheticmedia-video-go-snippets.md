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
id := uuid.MustParse("c3d4e5f6-a7b8-9012-cdef-345678901234")
requestBody.SetId(&id) 
detectionDateTime , err := time.Parse(time.RFC3339, "2026-03-13T21:05:00Z")
requestBody.SetDetectionDateTime(&detectionDateTime) 
severity := graphmodels.HIGH_DETECTIONSEVERITY 
requestBody.SetSeverity(&severity) 
overallConfidence := float64(0.91)
requestBody.SetOverallConfidence(&overallConfidence) 
isMalicious := true
requestBody.SetIsMalicious(&isMalicious) 
contentMetadata := graphmodels.NewMediaMetadata()
modality := graphmodels.VIDEO_CONTENTMODALITY 
contentMetadata.SetModality(&modality) 
isRealTime := false
contentMetadata.SetIsRealTime(&isRealTime) 
mimeType := "video/mp4"
contentMetadata.SetMimeType(&mimeType) 
byteSize := int64(2048000)
contentMetadata.SetByteSize(&byteSize) 
duration := int32(30)
contentMetadata.SetDuration(&duration) 
videoMetadata := graphmodels.NewVideoMetadata()
codec := "H.264"
videoMetadata.SetCodec(&codec) 
frameRate := float64(30)
videoMetadata.SetFrameRate(&frameRate) 
bitrateKbps := int32(512)
videoMetadata.SetBitrateKbps(&bitrateKbps) 
contentMetadata.SetVideoMetadata(videoMetadata)
requestBody.SetContentMetadata(contentMetadata)


syntheticMediaDetectionDetail := graphmodels.NewSyntheticMediaDetectionDetail()
modelName := "FaceSwapDetector-v3"
syntheticMediaDetectionDetail.SetModelName(&modelName) 
modality := graphmodels.VIDEO_CONTENTMODALITY 
syntheticMediaDetectionDetail.SetModality(&modality) 
modelTasks := []string {
	"faceSwap",
	"lipSync",
}
syntheticMediaDetectionDetail.SetModelTasks(modelTasks)
segment := graphmodels.NewMediaSegment()
startTimeSec := int32(0)
segment.SetStartTimeSec(&startTimeSec) 
endTimeSec := int32(0)
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
syntheticMediaDetectionDetail.SetSegment(segment)
confidence := float64(0.91)
syntheticMediaDetectionDetail.SetConfidence(&confidence) 

detections := []graphmodels.SyntheticMediaDetectionDetailable {
	syntheticMediaDetectionDetail,
}
requestBody.SetDetections(detections)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Communications().Calls().ByCallId("call-id").Participants().ByParticipantId("participant-id").ReportSyntheticMedia().Post(context.Background(), requestBody, nil)


```