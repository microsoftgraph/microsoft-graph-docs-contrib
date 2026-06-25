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
resource := graphmodels.NewAccessPackageResource()
displayName := "Dev"
resource.SetDisplayName(&displayName) 
description := "Dev"
resource.SetDescription(&description) 
originId := "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
resource.SetOriginId(&originId) 
originSystem := "AzureResources"
resource.SetOriginSystem(&originSystem) 
additionalData := map[string]interface{}{
	"resourceType" : "Subscription", 
}
resource.SetAdditionalData(additionalData)
requestBody.SetResource(resource)
catalog := graphmodels.NewAccessPackageCatalog()
id := "e8368470-afaf-44da-ba86-13a7318f1995"
catalog.SetId(&id) 
requestBody.SetCatalog(catalog)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceRequests().Post(context.Background(), requestBody, nil)


```