# RecentNotebook resource type

A recently accessed OneNote notebook. A RecentNotebook is similar to a [notebook](notebook.md) but has fewer properties.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recentNotebook"
}-->

```json
{
  "name": "string",
  "lastAccessedTime": "String (timestamp)",
  "links": {"@odata.type": "microsoft.graph.notebookLinks"},
  "sourceService": "String"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|String|The name of the notebook.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the notebook was last modified. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|links|[NotebookLinks](notebooklinks.md)|Links for opening the notebook. The `oneNoteClientURL` link opens the notebook in the OneNote native client if it's installed. The `oneNoteWebURL` link opens the notebook in OneNote Online.|
|sourceService|String|The back-end store where the Notebook resides, either `OneDriveForBusiness` or `OneDrive`|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List recent notebooks](../api/notebook_recent.md) | [Notebook](notebook.md) collection | Get a collection of the most recently accessed notebooks for the user. |