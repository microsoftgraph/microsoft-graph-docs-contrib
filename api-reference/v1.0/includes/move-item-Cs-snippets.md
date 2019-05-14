
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var parentReference = new ItemReference
{
	Id = "{new-parent-folder-id}",
};

var driveItem = new DriveItem
{
	ParentReference = parentReference,
	Name = "new-item-name.txt",
};

await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.UpdateAsync(driveItem);

```