---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ConfigurationMonitor
{
	DisplayName = "Demo Monitor",
	Description = "This is a Demo Monitor",
	Baseline = new ConfigurationBaseline
	{
		DisplayName = "Demo Baseline",
		Description = "This is a baseline with resources SharedMailbox, AcceptedDomain and MailContact",
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
							"Alias" , "testSharedMailbox"
						},
						{
							"Identity" , "TestSharedMailbox"
						},
						{
							"Ensure" , "Present"
						},
						{
							"PrimarySmtpAddress" , "testSharedMailbox@contoso.onmicrosoft.com"
						},
						{
							"EmailAddresses" , new List<string>
							{
								"abc@contoso.onmicrosoft.com",
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
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.ConfigurationManagement.ConfigurationMonitors.PostAsync(requestBody);


```