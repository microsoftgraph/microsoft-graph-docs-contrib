---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subjectRightsRequest = new SubjectRightsRequestObject
{
	Type = SubjectRightsRequestType.Export,
	ContentQuery = "((\"Diego Siciliani\" OR \"Diego.Siciliani@contoso.com\") OR (participants:\"Diego.Siciliani@contoso.com\"))",
	DataSubjectType = DataSubjectType.Customer,
	ExternalId = "F53BF2DA-607D-412A-B568-FAA0F023AC0B",
	DisplayName = "Export report for customer Id: 12345",
	Description = "This is a export request",
	IncludeAllVersions = false,
	IncludeAuthoredContent = true,
	InternalDueDateTime = DateTimeOffset.Parse("2022-07-20T22:42:28Z"),
	DataSubject = new DataSubject
	{
		FirstName = "Diego",
		LastName = "Siciliani",
		Email = "Diego.Siciliani@contoso.com",
		Residency = "USA"
	},
	MailboxLocations = null,
	PauseAfterEstimate = true,
	Regulations = new List<String>()
	{
		"CCPA"
	},
	SiteLocations = new SubjectRightsRequestAllSiteLocation
	{
	}
};

await graphClient.Privacy.SubjectRightsRequests
	.Request()
	.AddAsync(subjectRightsRequest);

```