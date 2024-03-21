---
title: "approval resource type"
description: "The approval object associated with a userConsentRequest, an accessPackageAssignmentRequest or a privilegedAccessGroupAssignmentScheduleRequest."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
---

# approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the approval object for decisions associated with a request.

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), the approval object for decisions associated with the `accessPackageAssignmentRequest`. A single step request can have one step associated with it which approvers can act on. Similarly, a multi-step request can have multiple steps associated with it which approvers can act on. However, in multi-step approvals both pending and previously completed steps are shown.

In [userConsentRequests](../resources/userconsentrequest.md), the approval object for decisions associated with a request.

In [Role management](../resources/rolemanagement.md), the approval object for decisions to approve or deny role assignments.

In [PIM for Microsoft Entra roles](../resources/privilegedidentitymanagementv3-overview.md), the approval object for decisions to approve or deny requests to activate eligible roles.

In [PIM for groups](../resources/privilegedidentitymanagement-for-groups-api-overview.md), the approval object for decisions to approve or deny requests to activate group membership or ownership.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[Get approval](../api/approval-get.md) | [approval](approval.md) | Retrieve the properties of an **approval** object in entitlement management and PIM. |
|[filterByCurrentUser](../api/approval-filterbycurrentuser.md)| [approval](approval.md) collection| Retrieve the **approval** objects for an approver in entitlement management and PIM.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the approval object. <br/><li> In entitlement management, it is the same identifier as the identifier of the [access package assignment request](accesspackageassignmentrequest.md). <li>In PIM for Microsoft Entra roles, it is the same identifier as the identifier of the [assignment schedule request](../resources/unifiedroleassignmentschedulerequest.md). <li>In PIM for groups, it is the same identifier as the identifier of the [assignment schedule request](../resources/privilegedaccessgroupassignmentschedulerequest.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|request|[request](../resources/request.md) collection|The request that's associated with this approval object.|
|steps|[approvalStep](../resources/approvalstep.md) collection|Used to represent the decision associated with a single step in the approval process configured in [approvalStage](../resources/approvalstage.md).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "baseType": "microsoft.graph.entity",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)",
  "steps": [{
        "@odata.type": "#microsoft.graph.approvalStep"
    }]
}
```
