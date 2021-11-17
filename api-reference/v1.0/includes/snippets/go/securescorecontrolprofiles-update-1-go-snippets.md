---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewSecureScoreControlProfile()
vendorInformation := msgraphsdk.NewSecurityVendorInformation()
requestBody.SetVendorInformation(vendorInformation)
provider := "SecureScore"
vendorInformation.SetProvider(&provider)
vendorInformation.SetProviderVersion(nil)
vendorInformation.SetSubProvider(nil)
vendor := "Microsoft"
vendorInformation.SetVendor(&vendor)
requestBody.SetAdditionalData(map[string]interface{}{
	"assignedTo": "",
	"comment": "control is reviewed",
	"state": "Reviewed",
}
options := &msgraphsdk.SecureScoreControlProfileRequestBuilderPatchOptions{
	Body: requestBody,
}
secureScoreControlProfileId := "secureScoreControlProfile-id"
graphClient.Security().SecureScoreControlProfilesById(&secureScoreControlProfileId).Patch(options)


```