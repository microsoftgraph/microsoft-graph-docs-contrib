---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new SubjectRightsRequest
{
	Type = SubjectRightsRequestType.Export,
	DataSubjectType = DataSubjectType.Customer,
	Regulations = new List<string>
	{
		"String",
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
		AdditionalData = new Dictionary<string, object>
		{
			{
				"phoneNumber" , "String"
			},
			{
				"SSN" , "String"
			},
		},
	},
};
var result = await graphClient.Privacy.SubjectRightsRequests.PostAsync(requestBody);


```