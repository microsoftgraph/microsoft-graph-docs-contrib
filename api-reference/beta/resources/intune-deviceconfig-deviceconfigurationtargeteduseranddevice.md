---
title: "deviceConfigurationTargetedUserAndDevice resource type"
description: "Conflict summary for a set of device configuration policies."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceConfigurationTargetedUserAndDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Conflict summary for a set of device configuration policies.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|The id of the device in the checkin.|
|deviceName|String|The name of the device in the checkin.|
|userId|String|The id of the user in the checkin.|
|userDisplayName|String|The display name of the user in the checkin|
|userPrincipalName|String|The UPN of the user in the checkin.|
|lastCheckinDateTime|DateTimeOffset|Last checkin time for this user/device pair.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceConfigurationTargetedUserAndDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceConfigurationTargetedUserAndDevice",
  "deviceId": "String",
  "deviceName": "String",
  "userId": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "lastCheckinDateTime": "String (timestamp)"
}
```