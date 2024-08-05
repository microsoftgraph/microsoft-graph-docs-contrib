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
requestType := graphmodels.ADMINREMOVE_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
resource := graphmodels.NewAccessPackageResource()
id := "1d0bb962-5bb0-4b16-a488-fda7a788b9ec"
resource.SetId(&id) 
requestBody.SetResource(resource)
catalog := graphmodels.NewAccessPackageCatalog()
id := "beedadfe-01d5-4025-910b-84abb9369997"
catalog.SetId(&id) 
requestBody.SetCatalog(catalog)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceRequests().Post(context.Background(), requestBody, nil)


```