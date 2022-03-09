---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewExternalGroup()
displayName := "Contoso Marketing"
requestBody.SetDisplayName(&displayName)
description := "The product marketing team"
requestBody.SetDescription(&description)
options := &msgraphsdk.ExternalGroupRequestBuilderPatchOptions{
	Body: requestBody,
}
externalConnectionId := "externalConnection-id"
externalGroupId := "externalGroup-id"
result, err := graphClient.External().ConnectionsById(&externalConnectionId).GroupsById(&externalGroupId).Patch(options)


```