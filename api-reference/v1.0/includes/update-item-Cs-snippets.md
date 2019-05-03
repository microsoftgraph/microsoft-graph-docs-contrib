
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var driveItem = new DriveItem
{
	Name = "new-file-name.docx",
};

await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.UpdateAsync(driveItem);

```