---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphgroups "github.com/microsoftgraph/msgraph-sdk-go/groups"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphgroups.NewAssignLicensePostRequestBody()


assignedLicense := graphmodels.NewAssignedLicense()
disabledPlans := []uuid.UUID {
	uuid.MustParse("113feb6c-3fe4-4440-bddc-54d774bf0318"),
	uuid.MustParse("14ab5db5-e6c4-4b20-b4bc-13e36fd2227f"),
}
assignedLicense.SetDisabledPlans(disabledPlans)
skuId := uuid.MustParse("b05e124f-c7cc-45a0-a6aa-8cf78c946968")
assignedLicense.SetSkuId(&skuId) 
assignedLicense1 := graphmodels.NewAssignedLicense()
disabledPlans := []uuid.UUID {
	uuid.MustParse("a413a9ff-720c-4822-98ef-2f37c2a21f4c"),
}
assignedLicense1.SetDisabledPlans(disabledPlans)
skuId := uuid.MustParse("c7df2760-2c81-4ef7-b578-5b5392b571df")
assignedLicense1.SetSkuId(&skuId) 

addLicenses := []graphmodels.AssignedLicenseable {
	assignedLicense,
	assignedLicense1,
}
requestBody.SetAddLicenses(addLicenses)
removeLicenses := []string {

}
requestBody.SetRemoveLicenses(removeLicenses)

result, err := graphClient.Groups().ByGroupId("group-id").AssignLicense().Post(context.Background(), requestBody, nil)


```