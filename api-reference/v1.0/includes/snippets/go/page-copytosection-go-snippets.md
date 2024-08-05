---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  //other-imports
)

requestBody := graphusers.NewItemCopyToSectionPostRequestBody()
id := "id-value"
requestBody.SetId(&id) 
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
copyToSection, err := graphClient.Me().Onenote().Pages().ByOnenotePageId("onenotePage-id").CopyToSection().Post(context.Background(), requestBody, nil)


```