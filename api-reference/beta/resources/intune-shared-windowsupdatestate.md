---
title: "windowsUpdateState resource type"
description: "Intune Shared Windowsupdatestate Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.prod: "Intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsUpdateState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsUpdateStates](../api/intune-shared-windowsupdatestate-list.md)|[windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) collection|List properties and relationships of the [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) objects.|
|[Get windowsUpdateState](../api/intune-shared-windowsupdatestate-get.md)|[windowsUpdateState](../resources/intune-shared-windowsupdatestate.md)|Read properties and relationships of the [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) object.|
|[Create windowsUpdateState](../api/intune-shared-windowsupdatestate-create.md)|[windowsUpdateState](../resources/intune-shared-windowsupdatestate.md)|Create a new [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) object.|
|[Delete windowsUpdateState](../api/intune-shared-windowsupdatestate-delete.md)|None|Deletes a [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md).|
|[Update windowsUpdateState](../api/intune-shared-windowsupdatestate-update.md)|[windowsUpdateState](../resources/intune-shared-windowsupdatestate.md)|Update the properties of a [windowsUpdateState](../resources/intune-shared-windowsupdatestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This is Id of the entity.|
|deviceId|String|The id of the device.|
|userId|String|The id of the user.|
|deviceDisplayName|String|Device display name.|
|userPrincipalName|String|User principal name.|
|status|[windowsUpdateStatus](../resources/intune-shared-windowsupdatestatus.md)|Windows udpate status. Possible values are: `upToDate`, `pendingInstallation`, `pendingReboot`, `failed`.|
|qualityUpdateVersion|String|The Quality Update Version of the device.|
|featureUpdateVersion|String|The current feature update version of the device.|
|lastScanDateTime|DateTimeOffset|The date time that the Windows Update Agent did a successful scan.|
|lastSyncDateTime|DateTimeOffset|Last date time that the device sync with with Microsoft Intune.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdateState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdateState",
  "id": "String (identifier)",
  "deviceId": "String",
  "userId": "String",
  "deviceDisplayName": "String",
  "userPrincipalName": "String",
  "status": "String",
  "qualityUpdateVersion": "String",
  "featureUpdateVersion": "String",
  "lastScanDateTime": "String (timestamp)",
  "lastSyncDateTime": "String (timestamp)"
}
```
