---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EducationalActivity
{
	CompletionMonthYear = new Date(DateTime.Parse("Date")),
	EndMonthYear = new Date(DateTime.Parse("Date")),
	Institution = new InstitutionData
	{
		Description = null,
		DisplayName = "Colorado State University",
		Location = new PhysicalAddress
		{
			Type = PhysicalAddressType.Business,
			PostOfficeBox = null,
			Street = "12000 E Prospect Rd",
			City = "Fort Collins",
			State = "Colorado",
			CountryOrRegion = "USA",
			PostalCode = "80525",
		},
		WebUrl = "https://www.colostate.edu",
	},
	Program = new EducationalActivityDetail
	{
		Abbreviation = "MBA",
		Activities = null,
		Awards = null,
		Description = "Master of Business Administration with a major in Entreprenuership and Finance.",
		DisplayName = "Master of Business Administration",
		FieldsOfStudy = null,
		Grade = "3.9",
		Notes = null,
		WebUrl = "https://biz.colostate.edu",
	},
	StartMonthYear = new Date(DateTime.Parse("Date")),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.EducationalActivities.PostAsync(requestBody);


```