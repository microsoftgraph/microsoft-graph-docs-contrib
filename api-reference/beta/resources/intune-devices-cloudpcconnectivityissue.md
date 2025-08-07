---
title: "cloudPCConnectivityIssue resource type"
description: "The user experience analyte connectivity issue entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# cloudPCConnectivityIssue resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analyte connectivity issue entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List cloudPCConnectivityIssues](../api/intune-devices-cloudpcconnectivityissue-list.md)|[cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) collection|List properties and relationships of the [cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) objects.|
|[Get cloudPCConnectivityIssue](../api/intune-devices-cloudpcconnectivityissue-get.md)|[cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md)|Read properties and relationships of the [cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) object.|
|[Create cloudPCConnectivityIssue](../api/intune-devices-cloudpcconnectivityissue-create.md)|[cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md)|Create a new [cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) object.|
|[Delete cloudPCConnectivityIssue](../api/intune-devices-cloudpcconnectivityissue-delete.md)|None|Deletes a [cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md).|
|[Update cloudPCConnectivityIssue](../api/intune-devices-cloudpcconnectivityissue-update.md)|[cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md)|Update the properties of a [cloudPCConnectivityIssue](../resources/intune-devices-cloudpcconnectivityissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics connectivity issue event entity.|
|deviceId|String|The Intune DeviceId of the device the connection is associated with.|
|errorCode|String|The error code of the connectivity issue.|
|errorDateTime|DateTimeOffset|The time that the connection initiated. The time is shown in ISO 8601 format and Coordinated Universal Time (UTC) time.|
|userId|String|The unique id of user who initialize the connection.|
|errorDescription|String|The detailed description of what went wrong.|
|recommendedAction|String|The recommended action to fix the corresponding error.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPCConnectivityIssue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCConnectivityIssue",
  "id": "String (identifier)",
  "deviceId": "String",
  "errorCode": "String",
  "errorDateTime": "String (timestamp)",
  "userId": "String",
  "errorDescription": "String",
  "recommendedAction": "String"
}
```