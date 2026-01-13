---
title: "payloadByFilter resource type"
description: "This entity represents a single payload with requested assignment filter Id"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# payloadByFilter resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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