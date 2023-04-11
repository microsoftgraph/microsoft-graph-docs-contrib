---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/applicationtemplates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "displayName eq 'AWS IAM Identity Center '"

requestParameters := &graphconfig.ApplicationTemplatesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.ApplicationTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ApplicationTemplates().Get(context.Background(), configuration)


```