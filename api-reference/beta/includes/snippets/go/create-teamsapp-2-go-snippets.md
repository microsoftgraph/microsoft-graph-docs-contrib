---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestRequiresreview := true

requestParameters := &graphconfig.AppCatalogsTeamsAppsRequestBuilderPostQueryParameters{
	Requiresreview: &requestRequiresreview,
}
configuration := &graphconfig.AppCatalogsTeamsAppsRequestBuilderPostRequestConfiguration{
	QueryParameters: requestParameters,
}

graphClient.AppCatalogs().TeamsApps().Post(context.Background(), configuration)


```