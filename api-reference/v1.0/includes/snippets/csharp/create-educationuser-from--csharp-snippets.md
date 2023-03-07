---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new EducationUser
{
	OdataType = "#microsoft.graph.educationUser",
	PrimaryRole = EducationUserRole.Student,
	MiddleName = "String",
	ExternalSource = EducationExternalSource.Sis,
	ExternalSourceDetail = "String",
	ResidenceAddress = new PhysicalAddress
	{
		OdataType = "microsoft.graph.physicalAddress",
	},
	MailingAddress = new PhysicalAddress
	{
		OdataType = "microsoft.graph.physicalAddress",
	},
	Student = new EducationStudent
	{
		OdataType = "microsoft.graph.educationStudent",
	},
	Teacher = new EducationTeacher
	{
		OdataType = "microsoft.graph.educationTeacher",
	},
	CreatedBy = new IdentitySet
	{
		OdataType = "microsoft.graph.identitySet",
	},
	AccountEnabled = boolean,
	AssignedLicenses = new List<AssignedLicense>
	{
		new AssignedLicense
		{
			OdataType = "microsoft.graph.assignedLicense",
		},
	},
	AssignedPlans = new List<AssignedPlan>
	{
		new AssignedPlan
		{
			OdataType = "microsoft.graph.assignedPlan",
		},
	},
	BusinessPhones = new List<string>
	{
		"String",
	},
	Department = "String",
	DisplayName = "String",
	GivenName = "String",
	Mail = "String",
	MailNickname = "String",
	MobilePhone = "String",
	PasswordPolicies = "String",
	PasswordProfile = new PasswordProfile
	{
		OdataType = "microsoft.graph.passwordProfile",
	},
	OfficeLocation = "String",
	PreferredLanguage = "String",
	ProvisionedPlans = new List<ProvisionedPlan>
	{
		new ProvisionedPlan
		{
			OdataType = "microsoft.graph.provisionedPlan",
		},
	},
	RefreshTokensValidFromDateTime = DateTimeOffset.Parse("String (timestamp)"),
	ShowInAddressList = boolean,
	Surname = "String",
	UsageLocation = "String",
	UserPrincipalName = "String",
	UserType = "String",
	OnPremisesInfo = new EducationOnPremisesInfo
	{
		OdataType = "microsoft.graph.educationOnPremisesInfo",
	},
};
var result = await graphClient.Education.Users.PostAsync(requestBody);


```