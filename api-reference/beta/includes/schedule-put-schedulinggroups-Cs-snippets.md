
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userIdsList = new List<String>();
userIdsList.Add( "c5d0c76b-80c4-481c-be50-923cd8d680a1" );
userIdsList.Add( "2a4296b3-a28a-44ba-bc66-0274b9b95851" );

var schedulingGroup = new SchedulingGroup
{
	DisplayName = "Cashiers",
	IsActive = true,
	UserIds = userIdsList,
};

await graphClient.Teams["{teamId}"].Schedule.SchedulingGroups["{schedulingGroupId}"]
	.Request()
	.PutAsync(schedulingGroup);

```