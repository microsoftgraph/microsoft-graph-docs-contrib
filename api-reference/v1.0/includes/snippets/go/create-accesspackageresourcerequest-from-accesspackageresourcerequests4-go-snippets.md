---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRequest()
requestType := graphmodels.ADMINADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
resource := graphmodels.NewAccessPackageResource()
displayName := "Test group"
resource.SetDisplayName(&displayName) 
originId := "8ab659d0-3839-427d-8c54-5ae92f0b3e2e"
resource.SetOriginId(&originId) 
originSystem := "AadGroup"
resource.SetOriginSystem(&originSystem) 
requestBody.SetResource(resource)
catalog := graphmodels.NewAccessPackageCatalog()
id := "beedadfe-01d5-4025-910b-84abb9369997"
catalog.SetId(&id) 
requestBody.SetCatalog(catalog)

resourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceRequests().Post(context.Background(), requestBody, nil)


```