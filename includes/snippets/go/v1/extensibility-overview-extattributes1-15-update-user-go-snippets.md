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

requestBody := graphmodels.NewUser()
onPremisesExtensionAttributes := graphmodels.NewOnPremisesExtensionAttributes()
extensionAttribute1 := "skypeId.adeleVance"
onPremisesExtensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
extensionAttribute13 := null
onPremisesExtensionAttributes.SetExtensionAttribute13(&extensionAttribute13) 
requestBody.SetOnPremisesExtensionAttributes(onPremisesExtensionAttributes)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```