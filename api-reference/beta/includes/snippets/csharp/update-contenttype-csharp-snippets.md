---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ContentType
{
	Name = "updatedCt",
	DocumentSet = new DocumentSet
	{
		ShouldPrefixNameToFile = true,
		AllowedContentTypes = new List<ContentTypeInfo>
		{
			new ContentTypeInfo
			{
				Id = "0x0101",
				Name = "Document",
			},
		},
		DefaultContents = new List<DocumentSetContent>
		{
			new DocumentSetContent
			{
				FileName = "a.txt",
				ContentType = new ContentTypeInfo
				{
					Id = "0x0101",
				},
			},
			new DocumentSetContent
			{
				FileName = "b.txt",
				ContentType = new ContentTypeInfo
				{
					Id = "0x0101",
				},
			},
		},
		SharedColumns = new List<ColumnDefinition>
		{
			new ColumnDefinition
			{
				Name = "Description",
				Id = "cbb92da4-fd46-4c7d-af6c-3128c2a5576e",
			},
			new ColumnDefinition
			{
				Name = "Address",
				Id = "fc2e188e-ba91-48c9-9dd3-16431afddd50",
			},
		},
		WelcomePageColumns = new List<ColumnDefinition>
		{
			new ColumnDefinition
			{
				Name = "Address",
				Id = "fc2e188e-ba91-48c9-9dd3-16431afddd50",
			},
		},
	},
};
var result = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].PatchAsync(requestBody);


```