---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAddLicenses( []AssignedLicense {
}
requestBody.SetRemoveLicenses( []String {
	"c7df2760-2c81-4ef7-b578-5b5392b571df",
	"b05e124f-c7cc-45a0-a6aa-8cf78c946968",
}
options := &msgraphsdk.AssignLicenseRequestBuilderPostOptions{
	Body: requestBody,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).AssignLicense().Post(options);


```