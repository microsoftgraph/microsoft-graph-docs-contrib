---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemAssignLicensePostRequestBody()


assignedLicense := graphmodels.NewAssignedLicense()
disabledPlans := []uuid.UUID {
	uuid.MustParse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"),
}
assignedLicense.SetDisabledPlans(disabledPlans)
skuId := uuid.MustParse("45715bb8-13f9-4bf6-927f-ef96c102d394")
assignedLicense.SetSkuId(&skuId) 

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,
}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []uuid.UUID {
	uuid.MustParse("bea13e0c-3828-4daa-a392-28af7ff61a0f"),
}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Me().AssignLicense().Post(context.Background(), requestBody, nil)


```