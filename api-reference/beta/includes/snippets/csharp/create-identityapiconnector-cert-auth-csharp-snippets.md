---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someotherapi.com/api",
	AuthenticationConfiguration = new Pkcs12Certificate
	{
		OdataType = "#microsoft.graph.pkcs12Certificate",
		Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		Password = "<password>",
	},
};
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```