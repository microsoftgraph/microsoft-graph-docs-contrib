---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAddLicenses( []AssignedLicense {
	msgraphsdk.NewAssignedLicense(),
	SetAdditionalData(map[string]interface{}{
		"disabledPlans":  []String {
			"11b0131d-43c8-4bbb-b2c8-e80f9a50834a",
		}
		"skuId": "guid",
	}
}
requestBody.SetRemoveLicenses( []String {
	"bea13e0c-3828-4daa-a392-28af7ff61a0f",
}
options := &msgraphsdk.AssignLicenseRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().AssignLicense().Post(options)


```