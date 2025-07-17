---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ColumnDefinition
{
	Description = "test",
	EnforceUniqueValues = false,
	Hidden = false,
	Indexed = false,
	Name = "Title",
	Text = new TextColumn
	{
		AllowMultipleLines = false,
		AppendChangesToExistingText = false,
		LinesForEditing = 0,
		MaxLength = 255,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Storage.FileStorage.Containers["{fileStorageContainer-id}"].Columns.PostAsync(requestBody);


```