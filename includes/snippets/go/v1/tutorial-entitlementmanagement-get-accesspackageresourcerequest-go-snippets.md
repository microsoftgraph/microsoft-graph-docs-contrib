---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessPackageResourceRequest()
requestType := graphmodels.ADMINADD_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
additionalData := map[string]interface{}{
	"catalogId" : "cec5d6ab-c75d-47c0-9c1c-92e89f66e384", 
	"justification" : "", 
accessPackageResource := graph.New()
resourceType := "AadGroup"
accessPackageResource.SetResourceType(&resourceType) 
originId := "e93e24d1-2b65-4a6c-a1dd-654a12225487"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AadGroup"
accessPackageResource.SetOriginSystem(&originSystem) 
	requestBody.SetAccessPackageResource(accessPackageResource)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceRequests().Post(context.Background(), requestBody, nil)


```