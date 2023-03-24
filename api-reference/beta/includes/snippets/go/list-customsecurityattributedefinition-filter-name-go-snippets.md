---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "name eq 'Project' and status eq 'Available'"

requestParameters := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.DirectoryCustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Get(context.Background(), configuration)


```