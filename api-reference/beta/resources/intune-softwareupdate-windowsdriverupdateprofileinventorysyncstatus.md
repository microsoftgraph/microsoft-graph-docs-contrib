---
title: "windowsDriverUpdateProfileInventorySyncStatus resource type"
description: "A complex type to store the status of a driver and firmware profile inventory sync. The status includes the last successful sync date time and the state of the last sync."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsDriverUpdateProfileInventorySyncStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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