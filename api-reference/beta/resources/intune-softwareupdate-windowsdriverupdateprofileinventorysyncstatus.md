---
title: "windowsDriverUpdateProfileInventorySyncStatus resource type"
description: "A complex type to store the status of a driver and firmware profile inventory sync. The status includes the last successful sync date time and the state of the last sync."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsDriverUpdateProfileInventorySyncStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the status of a driver and firmware profile inventory sync. The status includes the last successful sync date time and the state of the last sync.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastSuccessfulSyncDateTime|DateTimeOffset|The last successful sync date and time in UTC.|
|driverInventorySyncState|[windowsDriverUpdateProfileInventorySyncState](../resources/intune-softwareupdate-windowsdriverupdateprofileinventorysyncstate.md)|The state of the latest sync. Possible values are: `pending`, `success`, `failure`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsDriverUpdateProfileInventorySyncStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDriverUpdateProfileInventorySyncStatus",
  "lastSuccessfulSyncDateTime": "String (timestamp)",
  "driverInventorySyncState": "String"
}
```
