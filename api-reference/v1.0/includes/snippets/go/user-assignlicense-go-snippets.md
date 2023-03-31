---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/AssignLicense"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAssignLicensePostRequestBody()


assignedLicense := graphmodels.NewAssignedLicense()
disabledPlans := []string {
 := uuid.MustParse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a")
assignedLicense.Set(&) 

}
assignedLicense.SetDisabledPlans(disabledPlans)
skuId := uuid.MustParse("45715bb8-13f9-4bf6-927f-ef96c102d394")
assignedLicense.SetSkuId(&skuId) 

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,

}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {
 := uuid.MustParse("bea13e0c-3828-4daa-a392-28af7ff61a0f")
requestBody.Set(&) 

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(context.Background(), requestBody, nil)


```