---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ConfigurationMonitor
{
	DisplayName = "Demo Monitor",
	Description = "This is a Demo Monitor",
	Baseline = new ConfigurationBaseline
	{
		DisplayName = "Demo Baseline",
		Description = "This is a baseline with SharedMailbox, AcceptedDomain and MailContact",
		Parameters = new List<BaselineParameter>
		{
			new BaselineParameter
			{
				DisplayName = "FQDN",
				Description = "The Fully Qualified Domain Name of the Tenant",
				ParameterType = BaselineParameterType.String,
			},
		},
		Resources = new List<BaselineResource>
		{
			new BaselineResource
			{
				DisplayName = "TestSharedMailbox Resource",
				ResourceType = "microsoft.exchange.sharedmailbox",
				Properties = new OpenComplexDictionaryType
				{
					AdditionalData = new Dictionary<string, object>
					{
						{
							"DisplayName" , "TestSharedMailbox"
						},
						{
							"Identity" , "TestSharedMailbox"
						},
						{
							"Ensure" , "Present"
						},
						{
							"PrimarySmtpAddress" , "[concat('testSharedMailbox', parameters('FQDN'))]"
						},
						{
							"EmailAddresses" , new List<string>
							{
								"abc@contoso.onmicrosoft.com",
								"[concat('testSharedMailbox@', parameters('FQDN'))]",
							}
						},
					},
				},
			},
			new BaselineResource
			{
				DisplayName = "Accepted Domain",
				ResourceType = "microsoft.exchange.accepteddomain",
				Properties = new OpenComplexDictionaryType
				{
					AdditionalData = new Dictionary<string, object>
					{
						{
							"Identity" , "contoso.onmicrosoft.com"
						},
						{
							"DomainType" , "InternalRelay"
						},
						{
							"Ensure" , "Present"
						},
					},
				},
			},
			new BaselineResource
			{
				DisplayName = "Mail Contact Resource",
				ResourceType = "microsoft.exchange.mailcontact",
				Properties = new OpenComplexDictionaryType
				{
					AdditionalData = new Dictionary<string, object>
					{
						{
							"Name" , "Chris"
						},
						{
							"DisplayName" , "Chris"
						},
						{
							"ExternalEmailAddress" , "SMTP:chris@fabrikam.com"
						},
						{
							"Alias" , "Chrisa"
						},
						{
							"Ensure" , "Present"
						},
					},
				},
			},
		},
	},
	Parameters = new OpenComplexDictionaryType
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"FQDN" , "contoso.onmicrosoft.com"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.ConfigurationManagement.ConfigurationMonitors["{configurationMonitor-id}"].PatchAsync(requestBody);


```