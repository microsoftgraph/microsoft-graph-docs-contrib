---
title: "payloadByFilter resource type"
description: "This entity represents a single payload with requested assignment filter Id"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# payloadByFilter resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This entity represents a single payload with requested assignment filter Id

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|String|The policy identifier|
|payloadType|[associatedAssignmentPayloadType](../resources/intune-policyset-associatedassignmentpayloadtype.md)|The policy type identifier. Possible values are unknown,settingsPolicy,application,microsoftApplicationManagementPolicy,androidForWorkApplication,enrollmentConfiguration,microsoftIntuneManagementExtension,groupPolicy,zeroTouchDeploymentDeviceConfigProfile,androidEnterprisePolicy,deviceFirmwareConfigurationInterfacePolicy,windowsUpdateProfile,resourceAccessPolicy,sidecarPolicy,deviceConfigurationPolicy,microsoftManagementPlatformCloud. Possible values are: `unknown`, `deviceConfigurationAndCompliance`, `application`, `androidEnterpriseApp`, `enrollmentConfiguration`, `groupPolicyConfiguration`, `zeroTouchDeploymentDeviceConfigProfile`, `androidEnterpriseConfiguration`, `deviceFirmwareConfigurationInterfacePolicy`, `resourceAccessPolicy`, `win32app`, `deviceManagmentConfigurationAndCompliancePolicy`.|
|groupId|String|The Azure AD security group ID|
|assignmentFilterType|[deviceAndAppManagementAssignmentFilterType](../resources/intune-shared-deviceandappmanagementassignmentfiltertype.md)|An enum to indicate whether the filter is applied. Possible values are include,exclude,none.'include' means devices that match the filter conditions receive the app or policy. Devices that don't match the filter conditions don't receive the app or policy. 'exclude' means devices that match the filter conditions don't receive the app or policy. Devices that don't match the filter conditions receive the app or policy.'none' means no filter is assigned. Possible values are: `none`, `include`, `exclude`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payloadByFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.payloadByFilter",
  "payloadId": "String",
  "payloadType": "String",
  "groupId": "String",
  "assignmentFilterType": "String"
}
```
