---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

teamId := "team-id"
teamsAppInstallationId := "teamsAppInstallation-id"
graphClient.TeamsById(&teamId).InstalledAppsById(&teamsAppInstallationId).Upgrade().Post(nil)


```