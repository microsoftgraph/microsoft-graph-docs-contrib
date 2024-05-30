---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```