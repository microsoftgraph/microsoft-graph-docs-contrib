---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewItemInsightsSettings()
disabledForGroup := "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
requestBody.SetDisabledForGroup(&disabledForGroup)
options := &msgraphsdk.ItemInsightsRequestBuilderPatchOptions{
	Body: requestBody,
}
organizationId := "organization-id"
graphClient.OrganizationById(&organizationId).Settings().ItemInsights().Patch(options)


```