---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'"

requestParameters := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Get(context.Background(), configuration)


```