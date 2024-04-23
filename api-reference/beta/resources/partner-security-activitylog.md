---
title: "activityLog resource type"
description: "Represents the activity undertaken by a partner and includes details of state transitions, who performed them, and when they occurred."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# activityLog resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the activity undertaken by a partner and includes details of state transitions, who performed them, and when they occurred.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|statusFrom|microsoft.graph.partner.security.securityAlertStatus|The status of the alert before the status update activity by the partner. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|statusTo|microsoft.graph.partner.security.securityAlertStatus|The status of the alert after the status update activity by the partner. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|updatedBy|String|The UPN of the partner user who did the status update activity. This attribute is set by the system.|
|updatedDateTime|DateTimeOffset|The date and time for the status update activity. This attribute is set by the system. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.partner.security.activityLog"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.activityLog",
  "statusFrom": {
    "@odata.type": "microsoft.graph.partner.security.securityAlertStatus"
},
  "statusTo": {
    "@odata.type": "microsoft.graph.partner.security.securityAlertStatus"
},
  "updatedBy": "String",
  "updatedDateTime": "String (timestamp)"
}
```

