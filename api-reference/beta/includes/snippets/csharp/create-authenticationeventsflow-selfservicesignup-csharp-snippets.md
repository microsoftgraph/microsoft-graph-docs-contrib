---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationEventsFlow
{
	OdataType = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	DisplayName = "Woodgrove Drive User Flow",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"onAuthenticationMethodLoadStart" , new 
			{
				OdataType = "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
				IdentityProviders = new List<>
				{
					new 
					{
						Id = "EmailPassword-OAUTH",
					},
				},
			}
		},
		{
			"onInteractiveAuthFlowStart" , new 
			{
				OdataType = "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
				IsSignUpAllowed = true,
			}
		},
		{
			"onAttributeCollection" , new 
			{
				OdataType = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
				Attributes = new List<>
				{
					new 
					{
						Id = "email",
						DisplayName = "Email Address",
						Description = "Email address of the user",
						UserFlowAttributeType = "builtIn",
						DataType = "string",
					},
					new 
					{
						Id = "displayName",
						DisplayName = "Display Name",
						Description = "Display Name of the User.",
						UserFlowAttributeType = "builtIn",
						DataType = "string",
					},
				},
				AttributeCollectionPage = new 
				{
					Views = new List<>
					{
						new 
						{
							Inputs = new List<>
							{
								new 
								{
									Attribute = "email",
									Label = "Email Address",
									InputType = "Text",
									Hidden = true,
									Editable = false,
									WriteToDirectory = true,
									Required = true,
									ValidationRegEx = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
								},
								new 
								{
									Attribute = "displayName",
									Label = "Display Name",
									InputType = "text",
									Hidden = false,
									Editable = true,
									WriteToDirectory = true,
									Required = false,
									ValidationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
								},
							},
						},
					},
				},
			}
		},
	},
};
var result = await graphClient.Identity.AuthenticationEventsFlows.PostAsync(requestBody);


```