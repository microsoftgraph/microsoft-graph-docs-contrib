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

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/odata/groups('1a9db3ab-0acf-4808-99ae-e8ed581cb2e0')"
requestBody.SetOdataId(&odataId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Policies().MobileAppManagementPolicies().ByMobileAppManagementPolicyId("mobileAppManagementPolicy-id").IncludedGroups().Ref().Post(context.Background(), requestBody, nil)


```