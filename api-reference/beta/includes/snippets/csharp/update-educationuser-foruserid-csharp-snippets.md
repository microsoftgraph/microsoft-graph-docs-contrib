---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationUser
{
	RelatedContacts = new List<RelatedContact>
	{
		new RelatedContact
		{
			DisplayName = "Father Time",
			EmailAddress = "father@time.com",
			MobilePhone = "4251231234",
			Relationship = ContactRelationship.Guardian,
			AccessConsent = true,
		},
		new RelatedContact
		{
			DisplayName = "Mother Nature",
			EmailAddress = "mother@nature.co.uk",
			MobilePhone = "3251231234",
			Relationship = ContactRelationship.Parent,
			AccessConsent = true,
		},
	},
};
var result = await graphClient.Education.Users["{educationUser-id}"].PatchAsync(requestBody);


```