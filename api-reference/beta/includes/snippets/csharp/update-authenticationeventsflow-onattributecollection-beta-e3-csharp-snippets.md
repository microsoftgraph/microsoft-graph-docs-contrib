---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationEventsFlow
{
	OdataType = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"onAttributeCollection" , new 
			{
				OdataType = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
				AttributeCollectionPage = new 
				{
					CustomStringsFileId = null,
					Views = new List<>
					{
						new 
						{
							Title = null,
							Description = null,
							Inputs = new List<>
							{
								new 
								{
									Attribute = "email",
									Label = "Email Address",
									InputType = "text",
									DefaultValue = null,
									Hidden = true,
									Editable = false,
									WriteToDirectory = true,
									Required = true,
									ValidationRegEx = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
									Options = new List<>
									{
									},
								},
								new 
								{
									Attribute = "displayName",
									Label = "Display Name",
									InputType = "text",
									DefaultValue = null,
									Hidden = false,
									Editable = true,
									WriteToDirectory = true,
									Required = false,
									ValidationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
									Options = new List<>
									{
									},
								},
								new 
								{
									Attribute = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
									Label = "Favorite color",
									InputType = "text",
									DefaultValue = null,
									Hidden = false,
									Editable = true,
									WriteToDirectory = true,
									Required = false,
									ValidationRegEx = "^.*",
									Options = new List<>
									{
									},
								},
							},
						},
					},
				},
			}
		},
	},
};
var result = await graphClient.Identity.AuthenticationEventsFlows["{authenticationEventsFlow-id}"].PatchAsync(requestBody);


```