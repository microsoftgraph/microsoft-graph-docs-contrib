---
title: "request resource type"
description: "Represents the details of a request in PIM or userConsentRequests."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# request resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a request in [PIM](privilegedidentitymanagementv3-overview.md) or [user consent request](userconsentrequest.md) APIs.

Inherits from [entity](../resources/entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String| The identifier of the approval of the request.  |
|completedDateTime|DateTimeOffset| The request completion date time. |
|createdBy|[identitySet](../resources/identityset.md)|The principal that created the request.|
|createdDateTime|DateTimeOffset|The request creation date time.|
|customData|String|Free text field to define any custom data for the request. Not used.|
|id|String|The unique identifier for the request object. Inherited from [entity](../resources/entity.md).|
|status|String| The status of the request. Not nullable. The possible values are: `Canceled`, `Denied`, `Failed`, `Granted`, `PendingAdminDecision`, `PendingApproval`, `PendingProvisioning`, `PendingScheduleCreation`, `Provisioned`, `Revoked`, and `ScheduleCreated`. Not nullable. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.request",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.request",
  "id": "String (identifier)",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```