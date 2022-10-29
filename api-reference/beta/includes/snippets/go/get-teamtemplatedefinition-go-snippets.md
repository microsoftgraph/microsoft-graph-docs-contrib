---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.Teamwork().TeamTemplatesById("teamTemplate-id").DefinitionsById("teamTemplateDefinition-id").Get(context.Background(), nil)


```