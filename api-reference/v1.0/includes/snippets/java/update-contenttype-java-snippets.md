---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContentType contentType = new ContentType();
contentType.setName("updatedCt");
DocumentSet documentSet = new DocumentSet();
documentSet.setShouldPrefixNameToFile(true);
LinkedList<ContentTypeInfo> allowedContentTypes = new LinkedList<ContentTypeInfo>();
ContentTypeInfo contentTypeInfo = new ContentTypeInfo();
contentTypeInfo.setId("0x0101");
contentTypeInfo.setName("Document");
allowedContentTypes.add(contentTypeInfo);
documentSet.setAllowedContentTypes(allowedContentTypes);
LinkedList<DocumentSetContent> defaultContents = new LinkedList<DocumentSetContent>();
DocumentSetContent documentSetContent = new DocumentSetContent();
documentSetContent.setFileName("a.txt");
ContentTypeInfo contentType1 = new ContentTypeInfo();
contentType1.setId("0x0101");
documentSetContent.setContentType(contentType1);
defaultContents.add(documentSetContent);
DocumentSetContent documentSetContent1 = new DocumentSetContent();
documentSetContent1.setFileName("b.txt");
ContentTypeInfo contentType2 = new ContentTypeInfo();
contentType2.setId("0x0101");
documentSetContent1.setContentType(contentType2);
defaultContents.add(documentSetContent1);
documentSet.setDefaultContents(defaultContents);
LinkedList<ColumnDefinition> sharedColumns = new LinkedList<ColumnDefinition>();
ColumnDefinition columnDefinition = new ColumnDefinition();
columnDefinition.setName("Description");
columnDefinition.setId("cbb92da4-fd46-4c7d-af6c-3128c2a5576e");
sharedColumns.add(columnDefinition);
ColumnDefinition columnDefinition1 = new ColumnDefinition();
columnDefinition1.setName("Address");
columnDefinition1.setId("fc2e188e-ba91-48c9-9dd3-16431afddd50");
sharedColumns.add(columnDefinition1);
documentSet.setSharedColumns(sharedColumns);
LinkedList<ColumnDefinition> welcomePageColumns = new LinkedList<ColumnDefinition>();
ColumnDefinition columnDefinition2 = new ColumnDefinition();
columnDefinition2.setName("Address");
columnDefinition2.setId("fc2e188e-ba91-48c9-9dd3-16431afddd50");
welcomePageColumns.add(columnDefinition2);
documentSet.setWelcomePageColumns(welcomePageColumns);
contentType.setDocumentSet(documentSet);
ContentType result = graphClient.sites().bySiteId("{site-id}").contentTypes().byContentTypeId("{contentType-id}").patch(contentType);


```