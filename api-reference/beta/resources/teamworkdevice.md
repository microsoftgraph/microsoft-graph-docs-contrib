---
title: "teamworkDevice resource type"
description: "Represents details about a Microsoft Teams-enabled device that is provisioned for the tenant."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about a Microsoft Teams-enabled device that is provisioned for the tenant.

Microsoft Teams-enabled devices are Teams-certified collaboration devices. They include Microsoft Teams Rooms (on Windows and Android), Microsoft Teams Phones, panels, Surface Hubs, and SIP devices. These categories are the same as those available on the Teams admin center under the section **Teams devices**.

For more details, see [Manage your devices in Microsoft Teams.](/microsoftteams/devices/device-management)
>**Note**:
> This does not include mobile phones, laptops, computers, tabs, and so on.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkDevices](../api/teamworkdevice-list.md)|[teamworkDevice](../resources/teamworkdevice.md) collection|Get a list of all Microsoft Teams-enabled devices provisioned for a tenant.|
|[Get teamworkDevice](../api/teamworkdevice-get.md)|[teamworkDevice](../resources/teamworkdevice.md)|Get the properties of a Microsoft Teams-enabled device.|
|[restart](../api/teamworkdevice-restart.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Restart the specified Microsoft Teams-enabled device.|
|[runDiagnostics](../api/teamworkdevice-rundiagnostics.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Run and generate diagnostic logs for the specified Microsoft Teams-enabled device.|
|[updateSoftware](../api/teamworkdevice-updatesoftware.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md)|Update the software for a Microsoft Teams-enabled device.|
|[List operations](../api/teamworkdeviceoperation-list.md)|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|Get a list of operations that are running on a Teams-enabled device.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityState|teamworkDeviceActivityState|The activity state of the device. The possible values are: `unknown`, `busy`, `idle`, `unavailable`, `unknownFutureValue`.|
|companyAssetTag|String|The company asset tag assigned by the admin on the device.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user who enrolled the device to the tenant.|
|createdDateTime|DateTimeOffset|The UTC date and time when the device was enrolled to the tenant.|
|currentUser|[teamworkUserIdentity](../resources/teamworkuseridentity.md)|The signed-in user on the device.|
|deviceType|[teamworkDeviceType](../resources/teamworkdevice.md#teamworkdevicetype-values)|The type of device. The possible values are: `unknown`, `ipPhone`, `teamsRoom`, `surfaceHub`, `collaborationBar`, `teamsDisplay`, `touchConsole`, `lowCostPhone`, `teamsPanel`, `sip`, `sipAnalog`, `unknownFutureValue`.|
|hardwareDetail|[teamworkHardwareDetail](../resources/teamworkhardwaredetail.md)|A collection of hardware-related properties. For example, **oemSerialNumber** and **model**.|
|healthStatus|[teamworkDeviceHealthStatus](../resources/teamworkdevice.md#teamworkdevicehealthstatus-values)|The health status of the device. The possible values are: `unknown`, `offline`, `critical`, `nonUrgent`, `healthy`, `unknownFutureValue`.|
|id|String|Device identifier. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user who last modified the device details.|
|lastModifiedDateTime|DateTimeOffset|The UTC date and time when the device detail was last modified.|
|notes|String|The notes added by the admin to the device.|


### teamworkDeviceType values

| Member | Value| Description |
|:---------------|:--------|:----------|
|unknown|0|Unknown device.|
|ipPhone|1|IP Phone devices are the desk phones for users to make and receive audio calls or join meetings.|
|teamsRoom|2|Microsoft Teams Rooms are Windows IoT based devices designed to extend the meeting experience to the conference room.|
|surfaceHub|3|Surface Hub devices are wall-mounted or roller-stand-mounted devices with interactive whiteboard.|
|collaborationBar|4|Collaboration bars are Microsoft Teams Rooms on Android used for small meeting spaces.|
|teamsDisplay|5|Teams display devices are the evolution of Teams phones. These devices are a category of all-in-one dedicated Teams devices that feature an ambient touchscreen and a hands-free experience powered by Cortana.|
|touchConsole|6|Touch console devices are the optional peripherals to the Teams Rooms on Android to perform all the device operations.|
|lowCostPhone|7|Low-cost phone devices are cost-effective Microsoft Teams phones.|
|teamsPanel|8|Microsoft Teams panels are the compact touchscreen devices that display meeting details scheduled via Teams.|
|sip|9|Session Initiation Protocol (SIP) devices which support Teams calls with the SIP Gateway from Microsoft.|
|sipAnalog|10|Legacy analog endpoints such as elevator phones, parking lot phones, or factory floor devices, which are registered with Microsoft Teams through the SIP Gateway.|
|unknownFutureValue|11|Evolvable enumeration sentinel value. Do not use.|


### teamworkDeviceHealthStatus values

| Member | Value| Description |
|:---------------|:--------|:----------|
|unknown|0|Unknown health status.|
|offline|1|The device is offline and cannot be used.|
|critical|2|The state requires urgent attention and action as it might have a significant impact on the performance of the device, or make it unusable for calls or meetings.|
|nonUrgent|3|The state requires attention because of issues or notifications that might have a minimal impact on the performance of an online device.|
|healthy|4|The device is online and in good condition.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[teamworkDeviceActivity](../resources/teamworkdeviceactivity.md)|The activity properties that change based on the device usage.|
|configuration|[teamworkDeviceConfiguration](../resources/teamworkdeviceconfiguration.md)|The configuration properties of the device.|
|health|[teamworkDeviceHealth](../resources/teamworkdevicehealth.md)|The health properties of the device.|
|operations|[teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) collection|The async operations on the device.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDevice",
  "activityState": "String",
  "companyAssetTag": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "currentUser": {
    "@odata.type": "microsoft.graph.teamworkUserIdentity"
  },
  "deviceType": "String",
  "hardwareDetail": {
    "@odata.type": "microsoft.graph.teamworkHardwareDetail"
  },
  "healthStatus": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "notes": "String"
}
```

