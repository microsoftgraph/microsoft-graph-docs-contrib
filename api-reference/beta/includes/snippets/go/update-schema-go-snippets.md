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
	SetAdditionalData(map[string]interface{}{
		"name": "ticketTitle",
		"type": "string",
		"isSearchable": "true",
		"isRetrievable": "true",
		"labels":  []String {
			"title",
		}
	}
	msgraphsdk.NewProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "priority",
		"type": "string",
		"isQueryable": "true",
		"isRetrievable": "true",
		"isSearchable": "false",
	}
	msgraphsdk.NewProperty(),
	SetAdditionalData(map[string]interface{}{
		"name": "assignee",
		"type": "string",
		"isRetrievable": "true",
	}
}
options := &msgraphsdk.SchemaRequestBuilderPatchOptions{
	Body: requestBody,
}
externalConnectionId := "externalConnection-id"
graphClient.External().ConnectionsById(&externalConnectionId).Schema().Patch(options)


```