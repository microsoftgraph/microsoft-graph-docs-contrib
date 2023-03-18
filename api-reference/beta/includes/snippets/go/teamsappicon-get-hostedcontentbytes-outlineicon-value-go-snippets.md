---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.AppCatalogs().TeamsAppsById("teamsApp-id").AppDefinitionsById("teamsAppDefinition-id").OutlineIcon().HostedContent().Value().Get(context.Background(), nil)


```