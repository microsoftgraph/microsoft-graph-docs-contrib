---
title: "targetResource resource type"
description: "Represents target resource types associated with audit activity."
ms.localizationpriority: medium
author: "dhanyahk"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# targetResource resource type

Namespace: microsoft.graph

Represents target resource types associated with audit activity. 

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|Indicates the visible name defined for the resource. Typically specified when the resource is created.|
|groupType|groupType|When **type** is set to `Group`, this indicates the group type. Possible values are: `unifiedGroups`, `azureAD`, and `unknownFutureValue`|
|id|String|Indicates the unique ID of the resource.|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Indicates name, old value and new value of each attribute that changed. Property values depend on the operation **type**.|
|type|String|Describes the resource type.  Example values include `Application`, `Group`, `ServicePrincipal`, and `User`.|
|userPrincipalName|String|When **type** is set to `User`, this includes the user name that initiated the action; `null` for other types.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResource"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "type": "String",
  "userPrincipalName": "String",
  "groupType": "String",
  "modifiedProperties": [{"@odata.type": "microsoft.graph.modifiedProperty"}]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

