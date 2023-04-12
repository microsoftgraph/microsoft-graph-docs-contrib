---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someotherapi.com/api",
	AuthenticationConfiguration = new ApiAuthenticationConfigurationBase
	{
		OdataType = "#microsoft.graph.pkcs12Certificate",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"pkcs12Value" , "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA"
			},
			{
				"password" , "CertificatePassword"
			},
		},
	},
};
var result = await graphClient.Identity.ApiConnectors.PostAsync(requestBody);


```