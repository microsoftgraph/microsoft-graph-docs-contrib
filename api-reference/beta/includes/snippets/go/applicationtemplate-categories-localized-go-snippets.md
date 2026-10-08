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
	  graphapplicationtemplates "github.com/microsoftgraph/msgraph-beta-sdk-go/applicationtemplates"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Accept-Language", "cs")

configuration := &graphapplicationtemplates.ApplicationTemplateItemRequestBuilderGetRequestConfiguration{
	Headers: headers,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applicationTemplates, err := graphClient.ApplicationTemplates().ByApplicationTemplateId("applicationTemplate-id").Get(context.Background(), configuration)


```