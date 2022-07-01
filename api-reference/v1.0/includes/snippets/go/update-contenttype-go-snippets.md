---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContentType()
name := "updatedCt"
requestBody.SetName(&name)
documentSet := msgraphsdk.NewDocumentSet()
requestBody.SetDocumentSet(documentSet)
shouldPrefixNameToFile := true
documentSet.SetShouldPrefixNameToFile(&shouldPrefixNameToFile)
documentSet.SetAllowedContentTypes( []ContentTypeInfo {
	msgraphsdk.NewContentTypeInfo(),
id := "0x0101"
	SetId(&id)
name := "Document"
	SetName(&name)
}
documentSet.SetDefaultContents( []DocumentSetContent {
	msgraphsdk.NewDocumentSetContent(),
fileName := "a.txt"
	SetFileName(&fileName)
contentType := msgraphsdk.NewContentTypeInfo()
	SetContentType(contentType)
id := "0x0101"
	contentType.SetId(&id)
	msgraphsdk.NewDocumentSetContent(),
fileName := "b.txt"
	SetFileName(&fileName)
contentType := msgraphsdk.NewContentTypeInfo()
	SetContentType(contentType)
id := "0x0101"
	contentType.SetId(&id)
}
documentSet.SetSharedColumns( []ColumnDefinition {
	msgraphsdk.NewColumnDefinition(),
name := "Description"
	SetName(&name)
id := "cbb92da4-fd46-4c7d-af6c-3128c2a5576e"
	SetId(&id)
	msgraphsdk.NewColumnDefinition(),
name := "Address"
	SetName(&name)
id := "fc2e188e-ba91-48c9-9dd3-16431afddd50"
	SetId(&id)
}
documentSet.SetWelcomePageColumns( []ColumnDefinition {
	msgraphsdk.NewColumnDefinition(),
name := "Address"
	SetName(&name)
id := "fc2e188e-ba91-48c9-9dd3-16431afddd50"
	SetId(&id)
}
siteId := "site-id"
contentTypeId := "contentType-id"
graphClient.SitesById(&siteId).ContentTypesById(&contentTypeId).Patch(requestBody)


```