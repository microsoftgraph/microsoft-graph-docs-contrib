---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new BusinessScenarioTask
{
	OdataType = "#microsoft.graph.businessScenarioTask",
	Title = "Customer order #12010",
	PercentComplete = 0,
	Priority = 5,
	Target = new BusinessScenarioTaskTargetBase
	{
		OdataType = "microsoft.graph.businessScenarioGroupTarget",
		TaskTargetKind = PlannerTaskTargetKind.Group,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"groupId" , "7a339254-4b2b-4410-b295-c890a16776ee"
			},
		},
	},
	BusinessScenarioProperties = new BusinessScenarioProperties
	{
		ExternalObjectId = "Order#12010",
		ExternalContextId = "Warehouse-CA-36",
		ExternalObjectVersion = "000001",
		WebUrl = "https://ordertracking.contoso.com/view?id=12010",
		ExternalBucketId = "deliveryBucket",
	},
};
var result = await graphClient.Solutions.BusinessScenarios["{businessScenario-id}"].Planner.Tasks.PostAsync(requestBody);


```