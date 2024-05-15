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

requestBody := graphmodels.NewAttachment()
name := "Personal pictures"
requestBody.SetName(&name) 
sourceUrl := "https://contoso.com/personal/mario_contoso_net/Documents/Pics"
requestBody.SetSourceUrl(&sourceUrl) 
providerType := graphmodels.ONEDRIVECONSUMER_REFERENCEATTACHMENTPROVIDER 
requestBody.SetProviderType(&providerType) 
permission := graphmodels.EDIT_REFERENCEATTACHMENTPERMISSION 
requestBody.SetPermission(&permission) 
isFolder := true
requestBody.SetIsFolder(&isFolder) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
attachments, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().Post(context.Background(), requestBody, nil)


```