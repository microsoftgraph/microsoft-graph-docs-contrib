
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var residenceAddress = new PhysicalAddress
{
	City = "Los Angeles",
	CountryOrRegion = "United States",
	PostalCode = "98055",
	State = "CA",
	Street = "12345 Main St.",
};

var mailingAddress = new PhysicalAddress
{
	City = "Los Angeles",
	CountryOrRegion = "United States",
	PostalCode = "98055",
	State = "CA",
	Street = "12345 Main St.",
};

var user = new Identity
{
	DisplayName = "Susana Rocha",
	Id = "14012",
};

var createdBy = new IdentitySet
{
	User = user,
};

var educationUser = new EducationUser
{
	DisplayName = "Dion Matheson",
	GivenName = "Dion",
	MiddleName = null,
	Surname = "Matheson",
	Mail = "DionM@contoso.com",
	MobilePhone = "+1 (253) 555-0101",
	CreatedBy = createdBy,
	ExternalSource = EducationExternalSource.Sis,
	MailingAddress = mailingAddress,
	PrimaryRole = EducationUserRole.Student,
	ResidenceAddress = residenceAddress,
};

await graphClient.Education.Users
	.Request()
	.AddAsync(educationUser);

```