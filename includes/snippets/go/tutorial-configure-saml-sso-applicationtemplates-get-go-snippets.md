---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphapplicationtemplates "github.com/microsoftgraph/msgraph-sdk-go/applicationtemplates"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'"

requestParameters := &graphapplicationtemplates.ApplicationTemplatesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphapplicationtemplates.ApplicationTemplatesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.ApplicationTemplates().Get(context.Background(), configuration)


```