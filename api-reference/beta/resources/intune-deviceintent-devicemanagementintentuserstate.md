---
title: "deviceManagementIntentUserState resource type"
description: "Entity that represents user state for an intent"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementIntentUserState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents user state for an intent

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementIntentUserStates](../api/intune-deviceintent-devicemanagementintentuserstate-list.md)|[deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) collection|List properties and relationships of the [deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) objects.|
|[Get deviceManagementIntentUserState](../api/intune-deviceintent-devicemanagementintentuserstate-get.md)|[deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md)|Read properties and relationships of the [deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) object.|
|[Create deviceManagementIntentUserState](../api/intune-deviceintent-devicemanagementintentuserstate-create.md)|[deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md)|Create a new [deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) object.|
|[Delete deviceManagementIntentUserState](../api/intune-deviceintent-devicemanagementintentuserstate-delete.md)|None|Deletes a [deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md).|
|[Update deviceManagementIntentUserState](../api/intune-deviceintent-devicemanagementintentuserstate-update.md)|[deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md)|Update the properties of a [deviceManagementIntentUserState](../resources/intune-deviceintent-devicemanagementintentuserstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID|
|userPrincipalName|String|The user principal name that is being reported on a device|
|userName|String|The user name that is being reported on a device|
|deviceCount|Int32|Count of Devices that belongs to a user for an intent|
|lastReportedDateTime|DateTimeOffset|Last modified date time of an intent report|
|state|[complianceStatus](../resources/intune-shared-compliancestatus.md)|User state for an intent. The possible values are: `unknown`, `notApplicable`, `compliant`, `remediated`, `nonCompliant`, `error`, `conflict`, `notAssigned`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementIntentUserState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementIntentUserState",
  "id": "String (identifier)",
  "userPrincipalName": "String",
  "userName": "String",
  "deviceCount": 1024,
  "lastReportedDateTime": "String (timestamp)",
  "state": "String"
}
```