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

requestBody := graphmodels.NewCertificateBasedApplicationConfiguration()
displayName := "New display name"
requestBody.SetDisplayName(&displayName) 
description := "New description text"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
certificateBasedApplicationConfigurations, err := graphClient.Directory().CertificateAuthorities().CertificateBasedApplicationConfigurations().ByCertificateBasedApplicationConfigurationId("certificateBasedApplicationConfiguration-id").Patch(context.Background(), requestBody, nil)


```