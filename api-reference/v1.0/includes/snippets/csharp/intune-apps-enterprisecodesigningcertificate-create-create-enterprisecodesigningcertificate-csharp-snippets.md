---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new EnterpriseCodeSigningCertificate
{
	OdataType = "#microsoft.graph.enterpriseCodeSigningCertificate",
	Content = Convert.FromBase64String("Y29udGVudA=="),
	Status = CertificateStatus.Provisioned,
	SubjectName = "Subject Name value",
	Subject = "Subject value",
	IssuerName = "Issuer Name value",
	Issuer = "Issuer value",
	ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
	UploadDateTime = DateTimeOffset.Parse("2016-12-31T23:58:46.5747426-08:00"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceAppManagement.EnterpriseCodeSigningCertificates.PostAsync(requestBody);


```