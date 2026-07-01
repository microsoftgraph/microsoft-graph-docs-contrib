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

requestBody := graphmodels.NewCustomDataProvidedResourceUploadSession()
data := graphmodels.NewCustomExtensionData()
additionalData := map[string]interface{}{
	"reviewDefinitionId" : "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b", 
	"reviewInstanceId" : "15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d", 
}
data.SetAdditionalData(additionalData)
requestBody.SetData(data)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uploadSessions, err := graphClient.IdentityGovernance().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResources().ByAccessPackageResourceId("accessPackageResource-id").UploadSessions().Post(context.Background(), requestBody, nil)


```