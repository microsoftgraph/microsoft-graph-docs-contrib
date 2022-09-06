---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAssignLicensePostRequestBody()


assignedLicense := graphmodels.NewAssignedLicense()
additionalData := map[string]interface{}{
	disabledPlans := []string {
		"11b0131d-43c8-4bbb-b2c8-e80f9a50834a",

	}
	"skuId" : "45715bb8-13f9-4bf6-927f-ef96c102d394", 
}
assignedLicense.SetAdditionalData(additionalData)

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {
	"bea13e0c-3828-4daa-a392-28af7ff61a0f",

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(requestBody)


```