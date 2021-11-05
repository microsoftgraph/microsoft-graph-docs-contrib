---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSubjectRightsRequest()
internalDueDateTime, err := time.Parse(time.RFC3339, "2021-08-30T00:00:00Z")
requestBody.SetInternalDueDateTime(&internalDueDateTime)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.subjectRightsRequest",
}
options := &msgraphsdk.SubjectRightsRequestRequestBuilderPatchOptions{
	Body: requestBody,
}
subjectRightsRequestId := "subjectRightsRequest-id"
graphClient.Privacy().SubjectRightsRequestsById(&subjectRightsRequestId).Patch(options);


```