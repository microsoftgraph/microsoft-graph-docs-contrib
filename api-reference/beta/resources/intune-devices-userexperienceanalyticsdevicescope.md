---
title: "userExperienceAnalyticsDeviceScope resource type"
description: "The user experience analytics device scope entity contains device scope configuration values use to apply filtering on the endpoint analytics reports."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsDeviceScope resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device scope entity contains device scope configuration values use to apply filtering on the endpoint analytics reports.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceScopes](../api/intune-devices-userexperienceanalyticsdevicescope-list.md)|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) objects.|
|[Get userExperienceAnalyticsDeviceScope](../api/intune-devices-userexperienceanalyticsdevicescope-get.md)|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) object.|
|[Create userExperienceAnalyticsDeviceScope](../api/intune-devices-userexperienceanalyticsdevicescope-create.md)|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md)|Create a new [userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) object.|
|[Delete userExperienceAnalyticsDeviceScope](../api/intune-devices-userexperienceanalyticsdevicescope-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md).|
|[Update userExperienceAnalyticsDeviceScope](../api/intune-devices-userexperienceanalyticsdevicescope-update.md)|[userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md)|Update the properties of a [userExperienceAnalyticsDeviceScope](../resources/intune-devices-userexperienceanalyticsdevicescope.md) object.|
|[triggerDeviceScopeAction action](../api/intune-devices-userexperienceanalyticsdevicescope-triggerdevicescopeaction.md)|[deviceScopeActionResult](../resources/intune-devices-devicescopeactionresult.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the device scope configuration.|
|deviceScopeName|String|The name of the user experience analytics device Scope configuration.|
|ownerId|String|The unique identifier of the person (admin) who created the device scope configuration.|
|isBuiltIn|Boolean|Indicates whether the device scope configuration is built-in or custom. When TRUE, the device scope configuration is built-in. When FALSE, the device scope configuration is custom. Default value is FALSE.|
|enabled|Boolean|Indicates whether a device scope is enabled or disabled. When TRUE, the device scope is enabled. When FALSE, the device scope is disabled. Default value is FALSE.|
|status|[deviceScopeStatus](../resources/intune-devices-devicescopestatus.md)|Indicates the device scope status after the device scope has been enabled. The possible values are: none, computing, insufficientData or completed. Default value is none. The possible values are: `none`, `computing`, `insufficientData`, `completed`, `unknownFutureValue`.|
|parameter|[deviceScopeParameter](../resources/intune-devices-devicescopeparameter.md)|Device scope configuration parameter. It will be extended in future to add more parameter. Eg: device scope parameter can be OS version, Disk Type, Device manufacturer, device model or Scope tag. Default value: scopeTag. The possible values are: `none`, `scopeTag`, `unknownFutureValue`.|
|operator|[deviceScopeOperator](../resources/intune-devices-devicescopeoperator.md)|Device scope configuration query operator. The possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals. The possible values are: `none`, `equals`, `unknownFutureValue`.|
|valueObjectId|String|The unique identifier for a user device scope tag Id used for the creation of device scope configuration.|
|value|String|The device scope configuration query clause value.|
|createdDateTime|DateTimeOffset|Indicates the creation date and time for the custom device scope.|
|lastModifiedDateTime|DateTimeOffset|Indicates the last updated date and time for the custom device scope.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceScope",
  "id": "String (identifier)",
  "deviceScopeName": "String",
  "ownerId": "String",
  "isBuiltIn": true,
  "enabled": true,
  "status": "String",
  "parameter": "String",
  "operator": "String",
  "valueObjectId": "String",
  "value": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```