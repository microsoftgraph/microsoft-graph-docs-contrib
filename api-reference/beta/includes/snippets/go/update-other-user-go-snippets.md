---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUser()
businessPhones := []string {
	"+1 425 555 0109",

}
requestBody.SetBusinessPhones(businessPhones)
officeLocation := "18/2111"
requestBody.SetOfficeLocation(&officeLocation) 
authorizationInfo := graphmodels.NewAuthorizationInfo()
certificateUserIds := []string {
	"5432109876543210@mil",

}
authorizationInfo.SetCertificateUserIds(certificateUserIds)
requestBody.SetAuthorizationInfo(authorizationInfo)

result, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```