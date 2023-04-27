---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewContentType()
name := "updatedCt"
requestBody.SetName(&name) 
documentSet := graphmodels.NewDocumentSet()
shouldPrefixNameToFile := true
documentSet.SetShouldPrefixNameToFile(&shouldPrefixNameToFile) 


contentTypeInfo := graphmodels.NewContentTypeInfo()
id := "0x0101"
contentTypeInfo.SetId(&id) 
name := "Document"
contentTypeInfo.SetName(&name) 

allowedContentTypes := []graphmodels.ContentTypeInfoable {
	contentTypeInfo,

}
documentSet.SetAllowedContentTypes(allowedContentTypes)


documentSetContent := graphmodels.NewDocumentSetContent()
fileName := "a.txt"
documentSetContent.SetFileName(&fileName) 
contentType := graphmodels.NewContentTypeInfo()
id := "0x0101"
contentType.SetId(&id) 
documentSetContent.SetContentType(contentType)
documentSetContent1 := graphmodels.NewDocumentSetContent()
fileName := "b.txt"
documentSetContent1.SetFileName(&fileName) 
contentType := graphmodels.NewContentTypeInfo()
id := "0x0101"
contentType.SetId(&id) 
documentSetContent1.SetContentType(contentType)

defaultContents := []graphmodels.DocumentSetContentable {
	documentSetContent,
	documentSetContent1,

}
documentSet.SetDefaultContents(defaultContents)


columnDefinition := graphmodels.NewColumnDefinition()
name := "Description"
columnDefinition.SetName(&name) 
id := "cbb92da4-fd46-4c7d-af6c-3128c2a5576e"
columnDefinition.SetId(&id) 
columnDefinition1 := graphmodels.NewColumnDefinition()
name := "Address"
columnDefinition1.SetName(&name) 
id := "fc2e188e-ba91-48c9-9dd3-16431afddd50"
columnDefinition1.SetId(&id) 

sharedColumns := []graphmodels.ColumnDefinitionable {
	columnDefinition,
	columnDefinition1,

}
documentSet.SetSharedColumns(sharedColumns)


columnDefinition := graphmodels.NewColumnDefinition()
name := "Address"
columnDefinition.SetName(&name) 
id := "fc2e188e-ba91-48c9-9dd3-16431afddd50"
columnDefinition.SetId(&id) 

welcomePageColumns := []graphmodels.ColumnDefinitionable {
	columnDefinition,

}
documentSet.SetWelcomePageColumns(welcomePageColumns)
requestBody.SetDocumentSet(documentSet)

result, err := graphClient.Sites().BySiteId("site-id").ContentTypes().ByContentTypeId("contentType-id").Patch(context.Background(), requestBody, nil)


```