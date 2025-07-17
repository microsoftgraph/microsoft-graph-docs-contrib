---
title: "securityBaselineDeviceState resource type"
description: "The security baseline compliance state summary of the security baseline for a device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# securityBaselineDeviceState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The security baseline compliance state summary of the security baseline for a device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List securityBaselineDeviceStates](../api/intune-deviceintent-securitybaselinedevicestate-list.md)|[securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) collection|List properties and relationships of the [securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) objects.|
|[Get securityBaselineDeviceState](../api/intune-deviceintent-securitybaselinedevicestate-get.md)|[securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md)|Read properties and relationships of the [securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) object.|
|[Create securityBaselineDeviceState](../api/intune-deviceintent-securitybaselinedevicestate-create.md)|[securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md)|Create a new [securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) object.|
|[Delete securityBaselineDeviceState](../api/intune-deviceintent-securitybaselinedevicestate-delete.md)|None|Deletes a [securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md).|
|[Update securityBaselineDeviceState](../api/intune-deviceintent-securitybaselinedevicestate-update.md)|[securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md)|Update the properties of a [securityBaselineDeviceState](../resources/intune-deviceintent-securitybaselinedevicestate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the entity|
|managedDeviceId|String|Intune device id|
|deviceDisplayName|String|Display name of the device|
|userPrincipalName|String|User Principal Name|
|state|[securityBaselineComplianceState](../resources/intune-deviceintent-securitybaselinecompliancestate.md)|Security baseline compliance state. Possible values are: `unknown`, `secure`, `notApplicable`, `notSecure`, `error`, `conflict`.|
|lastReportedDateTime|DateTimeOffset|Last modified date time of the policy report|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityBaselineDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityBaselineDeviceState",
  "id": "String (identifier)",
  "managedDeviceId": "String",
  "deviceDisplayName": "String",
  "userPrincipalName": "String",
  "state": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```