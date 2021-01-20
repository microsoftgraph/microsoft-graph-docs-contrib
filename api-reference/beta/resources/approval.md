---
title: "approval resource type"
description: "The approval object associated with the accessPackageAssignmentRequest."
localization_priority: Normal
author: "sbounouh"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# approval resource type

Namespace: microsoft.graph

In [Azure AD Entitlement Management](entitlementmanagement-root.md), the approval object associated with the `accessPackageAssignmentRequest`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the approval object.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|steps|[approvalStage](../resources/approvalstage.md) collection|Used for the *approvalStages* property of approval settings in the *requestApprovalSettings* property of an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)"
}
```

