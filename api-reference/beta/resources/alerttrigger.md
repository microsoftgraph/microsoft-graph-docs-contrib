# AlertTrigger resource type

Complex type containing information about the attribute(s) that triggered a detection (attribute exists in the alert entity)

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|name|String|Name of the attribute serving as a detection trigger.|
|type|String|Type of the attribute in the key:value pair for interpretation, e.g. String, Boolean, etc.|
|value|String|Value of the attribute serving as a detection trigger.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.AlertTrigger"
}-->

```json
{
  "name": "String",
  "type": "String",
  "value": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "AlertTrigger resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->