---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.TeamsRequestBuilderGetQueryParameters{
	Filter: "displayName%20eq%20'A%20Contoso%20Team'",
	Select: "id,description",
}
options := &msgraphsdk.TeamsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Teams().Get(options)


```