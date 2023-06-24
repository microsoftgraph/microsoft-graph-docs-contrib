---
title: "approval resource type"
description: "The approval object associated with a userConsentRequest or an accessPackageAssignmentRequest."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# approval resource type

Namespace: microsoft.graph

Represents the approval object for decisions associated with a request.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get approval](../api/approval-get.md) | [approval](approval.md) | Retrieve the properties of an **approval** object in entitlement management. |
|[filterByCurrentUser](../api/approval-filterbycurrentuser.md)| [approval](approval.md) collection| Retrieve the **approval** objects for an approver in entitlement management.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier of the approval decision.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|stages|[approvalStage](../resources/approvalstage.md) collection|A collection of stages in the approval decision. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)",
  "stages": [{
        "@odata.type": "#microsoft.graph.approvalStage"
    }]
}
```
