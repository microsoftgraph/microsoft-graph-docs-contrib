---
title: "cloudPcFrontlineSharedDeviceDetail resource type"
description: "Represents the Cloud PC device details associated with frontline shared service plan, including the user's UPN and session start date/time."
author: "yanghwai"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/26/2025
---

# cloudPcFrontlineSharedDeviceDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC device details associated with frontline shared service plan, including the user's UPN and session start date/time.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedToUserPrincipalName|String|The user principal name (UPN) of the user to whom the device is currently assigned. If no user is assigned, this field remains empty. Example values, `john.doe@contoso.onmicrosoft.com` and ``.|
|sessionStartDateTime|DateTimeOffset|The date and time when the current user session starts, or null if there's no current user session. This is auto generated and assigned during each session starts. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as '2014-01-01T00:00:00Z'.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcFrontlineSharedDeviceDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcFrontlineSharedDeviceDetail",
  "assignedToUserPrincipalName": "String",
  "sessionStartDateTime": "String (timestamp)"
}
```
