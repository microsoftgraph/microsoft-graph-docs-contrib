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
		"8a256a2b-b617-496d-b51b-e76466e88db0",

	}
	"skuId" : "84a661c4-e949-4bd2-a560-ed7766fcaf2b", 
}
assignedLicense.SetAdditionalData(additionalData)
assignedLicense1 := graphmodels.NewAssignedLicense()
additionalData := map[string]interface{}{
	disabledPlans := []graphmodels.able {

	}
	"skuId" : "f30db892-07e9-47e9-837c-80727f46fd3d", 
}
assignedLicense1.SetAdditionalData(additionalData)

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,
	assignedLicense1,

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(requestBody)


```