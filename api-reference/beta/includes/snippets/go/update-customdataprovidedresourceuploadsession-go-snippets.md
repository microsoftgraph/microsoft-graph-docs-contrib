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
isUploadDone := true
requestBody.SetIsUploadDone(&isUploadDone) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uploadSessions, err := graphClient.IdentityGovernance().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").AccessPackageResources().ByAccessPackageResourceId("accessPackageResource-id").UploadSessions().ByCustomDataProvidedResourceUploadSessionId("customDataProvidedResourceUploadSession-id").Patch(context.Background(), requestBody, nil)


```