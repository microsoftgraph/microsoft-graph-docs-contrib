---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.Synchronization.Jobs.Item.Schema.SchemaPutRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"directories" , new List<>
			{
				new 
				{
					Name = "Azure Active Directory",
					Objects = new List<>
					{
						new 
						{
							Name = "User",
							Attributes = new List<>
							{
								new 
								{
									Name = "userPrincipalName",
									Type = "string",
								},
							},
						},
					},
				},
				new 
				{
					Name = "Salesforce",
				},
			}
		},
		{
			"synchronizationRules" , new List<>
			{
				new 
				{
					Name = "USER_TO_USER",
					SourceDirectoryName = "Azure Active Directory",
					TargetDirectoryName = "Salesforce",
					ObjectMappings = new List<>
					{
						new 
						{
							SourceObjectName = "User",
							TargetObjectName = "User",
							AttributeMappings = new List<>
							{
								new 
								{
									Source = new 
									{
									},
									TargetAttributeName = "userName",
								},
							},
						},
					},
				},
			}
		},
	},
};
await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs["{synchronizationJob-id}"].Schema.PutAsync(requestBody);


```