---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageResourceRequest()
catalogId := "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
requestBody.SetCatalogId(&catalogId)
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType)
justification := ""
requestBody.SetJustification(&justification)
accessPackageResource := msgraphsdk.NewAccessPackageResource()
requestBody.SetAccessPackageResource(accessPackageResource)
displayName := "Faculty cafeteria ordering"
accessPackageResource.SetDisplayName(&displayName)
description := "Example application"
accessPackageResource.SetDescription(&description)
url := "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/"
accessPackageResource.SetUrl(&url)
resourceType := "Application"
accessPackageResource.SetResourceType(&resourceType)
originId := "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e"
accessPackageResource.SetOriginId(&originId)
originSystem := "AadApplication"
accessPackageResource.SetOriginSystem(&originSystem)
accessPackageResource.SetAttributes( []AccessPackageResourceAttribute {
	msgraphsdk.NewAccessPackageResourceAttribute(),
	SetAdditionalData(map[string]interface{}{
		"attributeName": "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle",
		"isEditable": true,
		"isPersistedOnAssignmentRemoval": true,
	}
}
options := &msgraphsdk.AccessPackageResourceRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(options)


```