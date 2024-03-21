---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphschemaextensions "github.com/microsoftgraph/msgraph-sdk-go/schemaextensions"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "id eq 'graphlearn_test'"

requestParameters := &graphschemaextensions.SchemaExtensionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphschemaextensions.SchemaExtensionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

schemaExtensions, err := graphClient.SchemaExtensions().Get(context.Background(), configuration)


```