---
title: "activityLog resource type"
description: "Represents the activity by a partner and contains details of the state transitions, by whom and when."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# activityLog resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the activity by a partner and contains details of the state transitions, by whom and when.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|statusFrom|microsoft.graph.partner.security.securityAlertStatus|The status of the alert before the status update activity by partner. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|statusTo|microsoft.graph.partner.security.securityAlertStatus|The status of the alert after the status update activity by partner. The possible values are: `active`, `resolved`, `investigating`, `unknownFutureValue`.|
|updatedBy|String|The upn of the partner user who did the status update activity. This attribute is set by the system.|
|updatedDateTime|DateTimeOffset|The date and time for the status update activity. This attribute is set by the system.|

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
  "statusFrom": "String",
  "statusTo": "String",
  "updatedBy": "String",
  "updatedDateTime": "String (timestamp)"
}
```

