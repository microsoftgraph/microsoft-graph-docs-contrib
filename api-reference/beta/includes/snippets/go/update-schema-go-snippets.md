---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewSchema()
baseType := "microsoft.graph.externalItem"
requestBody.SetBaseType(&baseType)
requestBody.SetProperties( []Property {
	msgraphsdk.NewProperty(),
name := "ticketTitle"
	SetName(&name)
type := "string"
	SetType(&type)
isSearchable := "true"
	SetIsSearchable(&isSearchable)
isRetrievable := "true"
	SetIsRetrievable(&isRetrievable)
	SetLabels( []Label {
		"title",
	}
	msgraphsdk.NewProperty(),
name := "priority"
	SetName(&name)
type := "string"
	SetType(&type)
isQueryable := "true"
	SetIsQueryable(&isQueryable)
isRetrievable := "true"
	SetIsRetrievable(&isRetrievable)
isSearchable := "false"
	SetIsSearchable(&isSearchable)
	msgraphsdk.NewProperty(),
name := "assignee"
	SetName(&name)
type := "string"
	SetType(&type)
isRetrievable := "true"
	SetIsRetrievable(&isRetrievable)
}
externalConnectionId := "externalConnection-id"
graphClient.External().ConnectionsById(&externalConnectionId).Schema().Patch(requestBody)


```