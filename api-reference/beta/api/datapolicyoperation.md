# DataPolicyOperation resource type




## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get DataPolicyOperation](../api/datapolicyoperation_get.md) | [DataPolicyOperation](datapolicyoperation.md) |Read properties and relationships of dataPolicyOperation object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|completedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|status|string| Possible values are: `notStarted`, `running`, `complete`, `failed`, `unknownFutureValue`.|
|storageLocation|String||
|userId|String||
|submittedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.DataPolicyOperation"
}-->

```json
{
  "completedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "status": "string",
  "storageLocation": "String",
  "userId": "String",
  "submittedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "DataPolicyOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->