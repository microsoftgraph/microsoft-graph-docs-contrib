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

requestBody := graphmodels.NewSharePointGroup()
title := "This is the new group title"
requestBody.SetTitle(&title) 
description := "Updated group description"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sharePointGroups, err := graphClient.Storage().FileStorage().Containers().ByFileStorageContainerId("fileStorageContainer-id").SharePointGroups().BySharePointGroupId("sharePointGroup-id").Patch(context.Background(), requestBody, nil)


```