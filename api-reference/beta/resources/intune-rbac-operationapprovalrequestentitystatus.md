---
title: "operationApprovalRequestEntityStatus resource type"
description: "The operationApprovalRequestEntityStatus complex type is used to provide the basic infortmation relating to the status of a request without revealing too much information to the calling user as it may be an object out of scope."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# operationApprovalRequestEntityStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The operationApprovalRequestEntityStatus complex type is used to provide the basic infortmation relating to the status of a request without revealing too much information to the calling user as it may be an object out of scope.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|requestId|String|The unique identifier of the OperationApprovalRequest. This property cannot be modified and is required when the entity status is created. Read-only. This property is read-only.|
|requestExpirationDateTime|DateTimeOffset|Indicates the DateTime when any action on the OperationApprovalRequest is no longer permitted. The value cannot be modified and is automatically populated when the request is created using expiration offset values defined in the service controllers. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.|
|requestStatus|[operationApprovalRequestStatus](../resources/intune-rbac-operationapprovalrequeststatus.md)|The current approval status of the OperationApprovalRequest. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`. Default value is `unknown`. Read-only. This property is read-only. Possible values are: `unknown`, `needsApproval`, `approved`, `rejected`, `cancelled`, `completed`, `expired`, `unknownFutureValue`.|
|entityLocked|Boolean|The status of the Entity connected to the OperationApprovalRequest in regard to changes, whether further requests are allowed or if the Entity is locked. When `true`, a lock is present on the Entity and no approval requests can be currently made for it. When `false`, the Entity is not locked and approval requests are allowed. Default value is `false`. Read-only. This property is read-only.|

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
