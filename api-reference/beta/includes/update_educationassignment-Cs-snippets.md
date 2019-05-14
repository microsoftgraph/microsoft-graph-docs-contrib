
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var instructions = new EducationItemBody
{
	ContentType = BodyType.Text,
	Content = "Read chapters 1 through 3",
};

var educationAssignment = new EducationAssignment
{
	DisplayName = "Week 1 reading assignment",
	Instructions = instructions,
	DueDateTime = "2014-02-01T00:00:00Z",
};

await graphClient.Education.Classes["11021"].Assignments["19002"]
	.Request()
	.UpdateAsync(educationAssignment);

```