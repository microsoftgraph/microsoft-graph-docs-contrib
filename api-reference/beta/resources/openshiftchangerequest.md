---
title: "openShiftChangeRequest resource type"
description: "A type of shift request to claim an open shift in a schedule."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# openShiftChangeRequest resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A type of shift request to claim an [openshift](../resources/openshift.md) in a [schedule](../resources/schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get openShiftChangeRequest](../api/openshiftchangerequest-get.md) | [openShiftChangeRequest](openshiftchangerequest.md) | Read properties and relationships of openShiftChangeRequest object. |
| [Update](../api/openshiftchangerequest-update.md) | [openShiftChangeRequest](openshiftchangerequest.md) | Update openShiftChangeRequest object. |
| [Delete](../api/openshiftchangerequest-delete.md) | None | Delete openShiftChangeRequest object. |
|[Approve](../api/openshiftchangerequest-approve.md)|None|Approve  openShiftChangeRequest object.|
|[Decline](../api/openshiftchangerequest-decline.md)|None| Decline openShiftChangeRequest object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|openShiftId|String| ID for the open shift.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShiftChangeRequest",
  "baseType": ""
}-->

```json
{
  "openShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftChangeRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->