---
title: "deviceActionPayload resource type"
description: "Represents the policy or app included in the SyncPayloads action execution or result. For action execution, it represents the policy or app intended to be removed or uninstalled on the managed device. For action result, it represents the live reporting data for this policy or app regarding its removal or restoration process"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceActionPayload resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the policy or app included in the SyncPayloads action execution or result. For action execution, it represents the policy or app intended to be removed or uninstalled on the managed device. For action result, it represents the live reporting data for this policy or app regarding its removal or restoration process

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|String|The unique identifier for the policy or app. PayloadId is required property which needs to be set in the action POST request parameter for the DeviceActionPayload intended to remove|
|payloadType|[deviceActionPayloadType](../resources/intune-devices-deviceactionpayloadtype.md)|Indicates the policy or app type. PayloadType is required property which needs to be set in the action POST request parameter for the DeviceActionPayload intended to remove. Possible values are: application, deviceConfiguration, deviceManagementConfigurationPolicy. application payloadType is default value. Possible values are: `application`, `deviceConfiguration`, `deviceManagementConfigurationPolicy`, `unknownFutureValue`.|
|displayName|String|The display name for the policy or app. Read-Only. Returned in the action result. Can be null. This property is read-only.|
|intent|[deviceActionPayloadIntent](../resources/intune-devices-deviceactionpayloadintent.md)|Indicates the intent on the policy or app when executing this action on the managed device. Intent needs to be set as default value remove in the action POST request parameter. For the policy or app intended to remove through previous actions but not included in current action, its intent will be reported as restore in the action result. Possible values are: remove, restore. remove intent is default value. This property is read-only. Possible values are: `remove`, `restore`, `unknownFutureValue`.|
|status|[deviceActionPayloadStatus](../resources/intune-devices-deviceactionpayloadstatus.md)|Indicates the live status for the policy or app regarding the executed action on the managed device. Read-Only. Returned in the action result. Possible values are: inProgress, removed, error, succeeded. inProgress status is default value. This property is read-only. Possible values are: `inProgress`, `removed`, `error`, `succeeded`, `unknownFutureValue`.|
|detail|String|The detail for the policy or app regarding the executed action on the managed device. Read-Only. Returned in the action result. Can be null. This property is read-only.|
|errorCode|Int64|The error code for the policy or app regarding the failed executed action on the managed device. Read-Only. Returned in the action result. Valid values -9.22337203685478E+18 to 9.22337203685478E+18. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy or app was last modified because of either action execution or status change. Read-Only. Returned in the action result. The property value cannot be modified and is automatically populated when the action is initiated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2025 would look like this: '2025-01-01T00:00:00Z'. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceActionPayload"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceActionPayload",
  "payloadId": "String",
  "payloadType": "String",
  "displayName": "String",
  "intent": "String",
  "status": "String",
  "detail": "String",
  "errorCode": 1024,
  "lastModifiedDateTime": "String (timestamp)"
}
```
