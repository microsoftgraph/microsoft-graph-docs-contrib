---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRequest()
catalogId := "beedadfe-01d5-4025-910b-84abb9369997"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminRemove"
requestBody.SetRequestType(&requestType) 
accessPackageResource := graphmodels.NewAccessPackageResource()
id := "354078e5-dbce-4894-8af4-0ab274d41662"
accessPackageResource.SetId(&id) 
requestBody.SetAccessPackageResource(accessPackageResource)

accessPackageResourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```