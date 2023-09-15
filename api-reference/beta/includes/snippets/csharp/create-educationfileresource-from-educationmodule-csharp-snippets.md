---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationModuleResource
{
	Resource = new EducationFileResource
	{
		OdataType = "#microsoft.graph.educationFileResource",
		DisplayName = "test_pdf_file.pdf",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"file" , new 
				{
					Odataid = "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZLJG2P74OLQ5FL5EXU3VY6BFSQ",
				}
			},
		},
	},
};
var result = await graphClient.Education.Classes["{educationClass-id}"].Modules["{educationModule-id}"].Resources.PostAsync(requestBody);


```