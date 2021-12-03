---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters{
	Filter: "name%20eq%20'Project'%20and%20status%20eq%20'Available'",
}
options := &msgraphsdk.CustomSecurityAttributeDefinitionsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().Get(options)


```