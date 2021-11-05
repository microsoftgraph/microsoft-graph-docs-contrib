---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewColumnDefinition()
required := true
requestBody.SetRequired(&required)
hidden := false
requestBody.SetHidden(&hidden)
propagateChanges := false
requestBody.SetPropagateChanges(&propagateChanges)
options := &msgraphsdk.ColumnDefinitionRequestBuilderPatchOptions{
	Body: requestBody,
}
siteId := "site-id"
contentTypeId := "contentType-id"
columnDefinitionId := "columnDefinition-id"
graphClient.SitesById(&siteId).ContentTypesById(&contentTypeId).ColumnsById(&columnDefinitionId).Patch(options);


```