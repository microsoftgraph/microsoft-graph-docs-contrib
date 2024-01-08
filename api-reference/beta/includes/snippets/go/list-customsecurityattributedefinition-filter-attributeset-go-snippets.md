---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'"

requestParameters := &graphdirectory.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphdirectory.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

customSecurityAttributeDefinitions, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Get(context.Background(), configuration)


```