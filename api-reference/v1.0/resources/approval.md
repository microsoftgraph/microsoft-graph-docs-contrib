---
title: "approval resource type"
description: "The approval object associated with a userConsentRequest, an accessPackageAssignmentRequest, or a privilegedAccessGroupAssignmentScheduleRequest."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# approval resource type

Namespace: microsoft.graph

Represents the approval object for decisions associated with a request.

In [PIM for Groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), the approval object for decisions to approve or deny requests to activate group membership or ownership.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/approval-get.md) | [approval](approval.md) | Retrieve the properties of an **approval** object in entitlement management and PIM. |
|[Filter by current user](../api/approval-filterbycurrentuser.md)| [approval](approval.md) collection| Retrieve the **approval** objects for an approver in entitlement management and PIM.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier of the approval decision. <br/><li>In PIM for Groups, it's the same identifier as the identifier of the [assignment schedule request](../resources/privilegedaccessgroupassignmentschedulerequest.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|stages|[approvalStage](../resources/approvalstage.md) collection|A collection of stages in the approval decision. |

## JSON representation

The following JSON representation shows the resource type.
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
