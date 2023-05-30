---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationClass
{
	Description = "Health Level 1",
	ClassCode = "Health 501",
	DisplayName = "Health 1",
	ExternalId = "11019",
	ExternalName = "Health Level 1",
	ExternalSource = EducationExternalSource.Sis,
	MailNickname = "fineartschool.net",
};
var result = await graphClient.Education.Classes.PostAsync(requestBody);


```