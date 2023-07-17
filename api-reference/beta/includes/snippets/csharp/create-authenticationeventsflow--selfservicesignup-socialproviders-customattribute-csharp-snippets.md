---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ExternalUsersSelfServiceSignUpEventsFlow
{
	OdataType = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	DisplayName = "Woodgrove User Flow 2",
	OnAuthenticationMethodLoadStart = new OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
	{
		OdataType = "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
		IdentityProviders = new List<IdentityProviderBase>
		{
			new IdentityProviderBase
			{
				Id = "EmailPassword-OAUTH",
			},
			new IdentityProviderBase
			{
				Id = "Google-OAUTH",
			},
			new IdentityProviderBase
			{
				Id = "Facebook-OAUTH",
			},
		},
	},
	OnInteractiveAuthFlowStart = new OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp
	{
		OdataType = "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
		IsSignUpAllowed = true,
	},
	OnAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp
	{
		OdataType = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
		Attributes = new List<IdentityUserFlowAttribute>
		{
			new IdentityUserFlowAttribute
			{
				Id = "email",
				DisplayName = "Email Address",
				Description = "Email address of the user",
				UserFlowAttributeType = IdentityUserFlowAttributeType.BuiltIn,
				DataType = IdentityUserFlowAttributeDataType.String,
			},
			new IdentityUserFlowAttribute
			{
				Id = "displayName",
				DisplayName = "Display Name",
				Description = "Display Name of the User.",
				UserFlowAttributeType = IdentityUserFlowAttributeType.BuiltIn,
				DataType = IdentityUserFlowAttributeDataType.String,
			},
			new IdentityUserFlowAttribute
			{
				Id = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
				DisplayName = "Favorite color",
				Description = "what is your favorite color",
				UserFlowAttributeType = IdentityUserFlowAttributeType.Custom,
				DataType = IdentityUserFlowAttributeDataType.String,
			},
		},
		AttributeCollectionPage = new AuthenticationAttributeCollectionPage
		{
			Views = new List<AuthenticationAttributeCollectionPageViewConfiguration>
			{
				new AuthenticationAttributeCollectionPageViewConfiguration
				{
					Inputs = new List<AuthenticationAttributeCollectionInputConfiguration>
					{
						new AuthenticationAttributeCollectionInputConfiguration
						{
							Attribute = "email",
							Label = "Email Address",
							InputType = AuthenticationAttributeCollectionInputType.Text,
							Hidden = true,
							Editable = false,
							WriteToDirectory = true,
							Required = true,
							ValidationRegEx = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
						},
						new AuthenticationAttributeCollectionInputConfiguration
						{
							Attribute = "displayName",
							Label = "Display Name",
							InputType = AuthenticationAttributeCollectionInputType.Text,
							Hidden = false,
							Editable = true,
							WriteToDirectory = true,
							Required = false,
							ValidationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
						},
						new AuthenticationAttributeCollectionInputConfiguration
						{
							Attribute = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
							Label = "Favorite color",
							InputType = AuthenticationAttributeCollectionInputType.Text,
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
	},
};
var result = await graphClient.Identity.AuthenticationEventsFlows.PostAsync(requestBody);


```