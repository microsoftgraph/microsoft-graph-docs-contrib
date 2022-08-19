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
	"f30db892-07e9-47e9-837c-80727f46fd3d",
	"84a661c4-e949-4bd2-a560-ed7766fcaf2b",

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(requestBody)


```