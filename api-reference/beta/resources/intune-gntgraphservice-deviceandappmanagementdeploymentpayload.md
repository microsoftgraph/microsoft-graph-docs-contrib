---
title: "deviceAndAppManagementDeploymentPayload resource type"
description: "Device and app management deployment payload data."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentPayload resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device and app management deployment payload data.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|String|The payload id.|
|payloadDisplayName|String|The payload display name.|
|payloadType|String|The payload type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPayload",
  "payloadId": "String",
  "payloadDisplayName": "String",
  "payloadType": "String"
}
```