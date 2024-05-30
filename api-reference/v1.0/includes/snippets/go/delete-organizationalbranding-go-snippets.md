---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphorganization "github.com/microsoftgraph/msgraph-sdk-go/organization"
	  //other-imports
)

requestBody := graphorganization.NewBrandingDeleteRequestBody()
additionalData := map[string]interface{}{
	"id" : "0", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Organization().ByOrganizationId("organization-id").Branding().Delete(context.Background(), requestBody, nil)


```