---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ApplePushNotificationCertificate
{
	OdataType = "#microsoft.graph.applePushNotificationCertificate",
	AppleIdentifier = "Apple Identifier value",
	TopicIdentifier = "Topic Identifier value",
	ExpirationDateTime = DateTimeOffset.Parse("2016-12-31T23:57:57.2481234-08:00"),
	CertificateUploadStatus = "Certificate Upload Status value",
	CertificateUploadFailureReason = "Certificate Upload Failure Reason value",
	CertificateSerialNumber = "Certificate Serial Number value",
	Certificate = "Certificate value",
};
var result = await graphClient.DeviceManagement.ApplePushNotificationCertificate.PatchAsync(requestBody);


```