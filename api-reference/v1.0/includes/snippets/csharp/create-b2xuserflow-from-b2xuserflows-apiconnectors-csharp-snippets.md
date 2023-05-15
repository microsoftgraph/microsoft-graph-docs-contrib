---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new B2xIdentityUserFlow
{
	Id = "UserFlowWithAPIConnector",
	UserFlowType = UserFlowType.SignUpOrSignIn,
	UserFlowTypeVersion = 1f,
	ApiConnectorConfiguration = new UserFlowApiConnectorConfiguration
	{
		PostFederationSignup = new IdentityApiConnector
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"@odata.id" , "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
				},
			},
		},
		PostAttributeCollection = new IdentityApiConnector
		{
			AdditionalData = new Dictionary<string, object>
			{
				{
					"@odata.id" , "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"
				},
			},
		},
	},
};
var result = await graphClient.Identity.B2xUserFlows.PostAsync(requestBody);


```