---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var parameters = new List<SynchronizationJobApplicationParameters>()
{
	new SynchronizationJobApplicationParameters
	{
		RuleId = "6c409270-f78a-4bc6-af23-7cf3ab6482fe",
		Subjects = new List<SynchronizationJobSubject>()
		{
			new SynchronizationJobSubject
			{
				ObjectId = "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com",
				ObjectTypeName = "user"
			}
		}
	}
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs["{synchronizationJob-id}"]
	.ProvisionOnDemand(parameters)
	.Request()
	.PostAsync();

```