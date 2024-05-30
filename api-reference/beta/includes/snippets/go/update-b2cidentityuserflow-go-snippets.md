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

requestBody := graphmodels.NewB2cIdentityUserFlow()
isLanguageCustomizationEnabled := true
requestBody.SetIsLanguageCustomizationEnabled(&isLanguageCustomizationEnabled) 
defaultLanguageTag := "en"
requestBody.SetDefaultLanguageTag(&defaultLanguageTag) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
b2cUserFlows, err := graphClient.Identity().B2cUserFlows().ByB2cIdentityUserFlowId("b2cIdentityUserFlow-id").Patch(context.Background(), requestBody, nil)


```