
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var fileData = new AgreementFileData
{
	Data = "SGVsbG8gd29ybGQ=",
};

var files = new AgreementFile
{
	FileName = "TOU.pdf",
	Language = "en",
	IsDefault = true,
	FileData = fileData,
};

var filesList = new List<AgreementFile>();
filesList.Add( files );

var agreement = new Agreement
{
	DisplayName = "MSGraph Sample",
	IsViewingBeforeAcceptanceRequired = true,
	Files = filesList,
};

await graphClient.Agreements
	.Request()
	.AddAsync(agreement);

```