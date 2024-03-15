---
title: "user resource type"
description: "Intune Troubleshooting User Source_Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List users](../api/intune-troubleshooting-user-list.md)|[user](../resources/intune-troubleshooting-user.md) collection|List properties and relationships of the [user](../resources/intune-troubleshooting-user.md) objects.|
|[Get user](../api/intune-troubleshooting-user-get.md)|[user](../resources/intune-troubleshooting-user.md)|Read properties and relationships of the [user](../resources/intune-troubleshooting-user.md) object.|
|[Create user](../api/intune-troubleshooting-user-create.md)|[user](../resources/intune-troubleshooting-user.md)|Create a new [user](../resources/intune-troubleshooting-user.md) object.|
|[Delete user](../api/intune-troubleshooting-user-delete.md)|None|Deletes a [user](../resources/intune-troubleshooting-user.md).|
|[Update user](../api/intune-troubleshooting-user-update.md)|[user](../resources/intune-troubleshooting-user.md)|Update the properties of a [user](../resources/intune-troubleshooting-user.md) object.|
|[getManagedDevicesWithAppFailures function](../api/intune-troubleshooting-user-getmanageddeviceswithappfailures.md)|String collection|Retrieves the list of devices with failed apps|
|[getManagedDevicesWithFailedOrPendingApps function](../api/intune-troubleshooting-user-getmanageddeviceswithfailedorpendingapps.md)|[managedDeviceSummarizedAppState](../resources/intune-troubleshooting-manageddevicesummarizedappstate.md) collection|Retrieves the list of devices with failed or pending apps|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the user|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceManagementTroubleshootingEvents|[deviceManagementTroubleshootingEvent](../resources/intune-troubleshooting-devicemanagementtroubleshootingevent.md) collection|The list of troubleshooting events for this user.|
|mobileAppIntentAndStates|[mobileAppIntentAndState](../resources/intune-troubleshooting-mobileappintentandstate.md) collection|The list of troubleshooting events for this user.|
|mobileAppTroubleshootingEvents|[mobileAppTroubleshootingEvent](../resources/intune-troubleshooting-mobileapptroubleshootingevent.md) collection|The list of mobile app troubleshooting events for this user.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```
