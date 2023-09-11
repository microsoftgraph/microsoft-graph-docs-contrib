---
title: "operationApprovalRequestEntityStatus resource type"
description: "The OperationApprovalRequestEntityStatus object"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# operationApprovalRequestEntityStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The OperationApprovalRequestEntityStatus object

## Properties
|Property|Type|Description|
|:---|:---|:---|
|requestId|String|The ID of the OperationApprovalRequest for this Entity. This property is read-only.|
|requestExpirationDateTime|DateTimeOffset|The DateTime at which actions upon the request are no longer permitted. This property is read-only.|
|requestStatus|[operationApprovalRequestStatus](../resources/intune-rbac-operationapprovalrequeststatus.md)|The current approval request status. This property is read-only. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`, `unknownFutureValue`.|
|entityLocked|Boolean|The status of the Entity in regard to changes, whether further requests are allowed or the Entity is locked. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.operationApprovalRequestEntityStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.operationApprovalRequestEntityStatus",
  "requestId": "String",
  "requestExpirationDateTime": "String (timestamp)",
  "requestStatus": "String",
  "entityLocked": true
}
```
