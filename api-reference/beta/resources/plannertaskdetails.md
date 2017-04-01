# plannerTaskDetails resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerTaskDetails](../api/plannertaskdetails_get.md) | [plannerTaskDetails](plannertaskdetails.md) |Read properties and relationships of plannerTaskDetails object.|
|[Update](../api/plannertaskdetails_update.md) | [plannerTaskDetails](plannertaskdetails.md)	|Update plannerTaskDetails object. |
|[Delete](../api/plannertaskdetails_delete.md) | None |Delete plannerTaskDetails object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|checklist|[plannerChecklistItems](plannerchecklistitems.md)||
|description|String||
|id|String| Read-only.|
|previewType|string| Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|references|[plannerExternalReferences](plannerexternalreferences.md)||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerTaskDetails"
}-->

```json
{
  "checklist": {"@odata.type": "microsoft.graph.plannerChecklistItems"},
  "description": "String",
  "id": "String (identifier)",
  "previewType": "string",
  "references": {"@odata.type": "microsoft.graph.plannerExternalReferences"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->