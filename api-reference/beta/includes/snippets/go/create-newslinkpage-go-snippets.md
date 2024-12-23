---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphsites "github.com/microsoftgraph/msgraph-beta-sdk-go/sites"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("prefer", "include-unknown-enum-members")

configuration := &graphsites.ItemPagesRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewBaseSitePage()
newsWebUrl := "https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car"
requestBody.SetNewsWebUrl(&newsWebUrl) 
title := "Contoso Unveils First Self-Driving Car"
requestBody.SetTitle(&title) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
pages, err := graphClient.Sites().BySiteId("site-id").Pages().Post(context.Background(), requestBody, configuration)


```