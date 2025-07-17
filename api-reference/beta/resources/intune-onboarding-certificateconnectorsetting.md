---
title: "certificateConnectorSetting resource type"
description: "Certificate connector settings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# certificateConnectorSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Certificate connector settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|Int32|Certificate connector status|
|certExpiryTime|DateTimeOffset|Certificate expire time|
|enrollmentError|String|Certificate connector enrollment error|
|lastConnectorConnectionTime|DateTimeOffset|Last time certificate connector connected|
|connectorVersion|String|Version of certificate connector|
|lastUploadVersion|Int64|Version of last uploaded certificate connector|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.certificateConnectorSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateConnectorSetting",
  "status": 1024,
  "certExpiryTime": "String (timestamp)",
  "enrollmentError": "String",
  "lastConnectorConnectionTime": "String (timestamp)",
  "connectorVersion": "String",
  "lastUploadVersion": 1024
}
```