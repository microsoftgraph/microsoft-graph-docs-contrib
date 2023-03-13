---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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