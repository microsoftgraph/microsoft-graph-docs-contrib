---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOpenShift()
schedulingGroupId := "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
requestBody.SetSchedulingGroupId(&schedulingGroupId)
sharedOpenShift := msgraphsdk.NewOpenShiftItem()
requestBody.SetSharedOpenShift(sharedOpenShift)
sharedOpenShift.SetAdditionalData(map[string]interface{}{
	"notes": "Inventory Management",
	"openSlotCount": ,
	"displayName": "Field shift",
	"startDateTime": "2018-10-04T00:58:45.340Z",
	"endDateTime": "2018-10-04T09:50:45.332Z",
	"theme": "white",
	"activities":  []Object {
	}
}
requestBody.SetDraftOpenShift(nil)
options := &msgraphsdk.OpenShiftRequestBuilderPatchOptions{
	Body: requestBody,
}
teamId := "team-id"
openShiftId := "openShift-id"
graphClient.TeamsById(&teamId).Schedule().OpenShiftsById(&openShiftId).Patch(options);


```