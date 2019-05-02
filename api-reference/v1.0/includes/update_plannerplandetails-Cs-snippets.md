
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var categoryDescriptions = new PlannerCategoryDescriptions
{
	Category1 = "Indoors",
	Category3 = null,
};

var sharedWith = new PlannerUserIds
{
	6463a5ce-2119-4198-9f2a-628761df4a62 = true,
	D95e6152-f683-4d78-9ff5-67ad180fea4a = false,
};

var plannerPlanDetails = new PlannerPlanDetails
{
	SharedWith = sharedWith,
	CategoryDescriptions = categoryDescriptions,
};

await graphClient.Planner.Plans["{plan-id}"].Details
	.Request()
	.UpdateAsync(plannerPlanDetails);

```