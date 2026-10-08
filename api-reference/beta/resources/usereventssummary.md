---
title: "userEventsSummary resource type"
description: "Represents a specific user MFA/SSPR registration or reset event, including whether the event was successful, which authentication method was targeted, and failure reason if any."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 01/12/2026
---

# userEventsSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific user MFA/SSPR registration or reset event, including whether the event was successful, which authentication method was targeted, and failure reason if any.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-list-usereventssummary.md)|[userEventsSummary](../resources/usereventssummary.md) collection|Get a list of the user registration and reset events as defined in the [userEventsSummary](../resources/usereventssummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authMethod|[usageAuthMethod](../resources/usageauthmethod.md)|The authentication method being targeted in the event.|
|eventDateTime|DateTimeOffset|The date and time (UTC) when the event occurred.  The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|failureReason|String|The specific reason why the event failed (if it was not successful.)|
|feature|featureType|The type of event that occurred. The possible values are: `registration`, `reset`, `unknownFutureValue`.|
|id|String|User object identifier in Microsoft Entra ID. Inherited from [entity](../resources/entity.md).|
|isSuccess|Boolean|Indicates whether the event was successful or not.|
|userDisplayName|String|The user display name, such as `Adele Vance`. Supports `$filter` (`eq`, `startsWith`) and `$orderby`.|
|userPrincipalName|String|The user principal name, such as `AdeleV@contoso.com`. Supports `$filter` (`eq`, `startsWith`) and `$orderby`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userEventsSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userEventsSummary",
  "id": "String (identifier)",
  "feature": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "isSuccess": "Boolean",
  "authMethod": "String",
  "failureReason": "String",
  "eventDateTime": "String (timestamp)"
}
```

