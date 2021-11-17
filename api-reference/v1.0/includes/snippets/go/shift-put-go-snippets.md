---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewShift()
id := "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"
requestBody.SetId(&id)
createdDateTime, err := time.Parse(time.RFC3339, "2019-03-14T04:32:51.451Z")
requestBody.SetCreatedDateTime(&createdDateTime)
lastModifiedDateTime, err := time.Parse(time.RFC3339, "2019-03-14T05:32:51.451Z")
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime)
userId := "c5d0c76b-80c4-481c-be50-923cd8d680a1"
requestBody.SetUserId(&userId)
schedulingGroupId := "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
requestBody.SetSchedulingGroupId(&schedulingGroupId)
lastModifiedBy := msgraphsdk.NewIdentitySet()
requestBody.SetLastModifiedBy(lastModifiedBy)
lastModifiedBy.SetApplication(nil)
lastModifiedBy.SetDevice(nil)
user := msgraphsdk.NewIdentity()
lastModifiedBy.SetUser(user)
id := "366c0b19-49b1-41b5-a03f-9f3887bd0ed8"
user.SetId(&id)
displayName := "John Doe"
user.SetDisplayName(&displayName)
lastModifiedBy.SetAdditionalData(map[string]interface{}{
	"conversation": nil,
}
sharedShift := msgraphsdk.NewShiftItem()
requestBody.SetSharedShift(sharedShift)
sharedShift.SetAdditionalData(map[string]interface{}{
	"displayName": "Day shift",
	"notes": "Please do inventory as part of your shift.",
	"startDateTime": "2019-03-11T15:00:00Z",
	"endDateTime": "2019-03-12T00:00:00Z",
	"theme": "blue",
	"activities":  []Object {
	}
}
draftShift := msgraphsdk.NewShiftItem()
requestBody.SetDraftShift(draftShift)
draftShift.SetAdditionalData(map[string]interface{}{
	"displayName": "Day shift",
	"notes": "Please do inventory as part of your shift.",
	"startDateTime": "2019-03-11T15:00:00Z",
	"endDateTime": "2019-03-12T00:00:00Z",
	"theme": "blue",
	"activities":  []Object {
	}
}
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.ShiftRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
teamId := "team-id"
shiftId := "shift-id"
graphClient.TeamsById(&teamId).Schedule().ShiftsById(&shiftId).Patch(options)


```