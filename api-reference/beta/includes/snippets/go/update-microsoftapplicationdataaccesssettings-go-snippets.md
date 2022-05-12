---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMicrosoftApplicationDataAccessSettings()
disabledForGroup := "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
requestBody.SetDisabledForGroup(&disabledForGroup)
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).Settings().MicrosoftApplicationDataAccess().Patch(requestBody)


```