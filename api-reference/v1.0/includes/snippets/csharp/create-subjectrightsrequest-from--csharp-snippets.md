---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjectRightsRequest = new SubjectRightsRequestObject
{
	Type = SubjectRightsRequestType.Export,
	DataSubjectType = DataSubjectType.Customer,
	Regulations = new List<String>()
	{
		"String"
	},
	DisplayName = "String",
	Description = "String",
	InternalDueDateTime = DateTimeOffset.Parse("String (timestamp)"),
	DataSubject = new DataSubject
	{
		FirstName = "String",
		LastName = "String",
		Email = "String",
		Residency = "String",
		AdditionalData = new Dictionary<string, object>()
		{
			{"phoneNumber", "String"},
			{"SSN", "String"}
		}
	}
};

await graphClient.Privacy.SubjectRightsRequests
	.Request()
	.AddAsync(subjectRightsRequest);

```