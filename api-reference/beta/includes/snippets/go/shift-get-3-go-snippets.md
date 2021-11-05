---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"id": "SHPR_eeab4fb1-20e5-48ca-ad9b-98119d94bee7",
	"@odata.etag": "1a371e53-f0a6-4327-a1ee-e3c56e4b38aa",
	"availability":  []Object {
	}
}
options := &msgraphsdk.ShiftPreferencesRequestBuilderPutOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).Settings().ShiftPreferences().Put(options);


```