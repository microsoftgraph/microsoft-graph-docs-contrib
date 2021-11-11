---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewProfileCardProperty()
directoryPropertyName := "CustomAttribute1"
requestBody.SetDirectoryPropertyName(&directoryPropertyName)
requestBody.SetAnnotations( []ProfileCardAnnotation {
	msgraphsdk.NewProfileCardAnnotation(),
	SetAdditionalData(map[string]interface{}{
		"displayName": "Cost Center",
		"localizations":  []Object {
		}
	}
}
options := &msgraphsdk.ProfileCardPropertiesRequestBuilderPostOptions{
	Body: requestBody,
}
organizationId := "organization-id"
result, err := graphClient.OrganizationById(&organizationId).Settings().ProfileCardProperties().Post(options)


```