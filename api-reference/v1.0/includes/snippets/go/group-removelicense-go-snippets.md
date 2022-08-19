---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAssignLicensePostRequestBody()
addLicenses := []graphmodels.AssignedLicenseable {

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {
	"c7df2760-2c81-4ef7-b578-5b5392b571df",
	"b05e124f-c7cc-45a0-a6aa-8cf78c946968",

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.GroupsById("group-id").AssignLicense().Post(requestBody)


```