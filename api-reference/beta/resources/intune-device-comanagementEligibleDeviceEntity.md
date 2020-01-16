---
title: "comanagementEligibleDeviceEntity resource type"
description: "comanagementEligibleDeviceEntity resource type"
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# comanagementEligibleDeviceEntity resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Managed Device Mobile App Configuration State for a given device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List comanagementEligibleDeviceEntity](../api/intune-device-comanagementEligibleDeviceEntity-list.md)|[comanagementEligibleDeviceEntity](../resources/intune-device-comanagementEligibleDeviceEntity.md) collection|List properties and relationships of the [comanagementEligibleDeviceEntity](../resources/intune-device-comanagementEligibleDeviceEntity.md) objects.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Id of the EligibleDeviceEntity|
|deviceId|String|DeviceId|
|deviceName|String|DeviceName|
|deviceType|String|DeviceType|
|clientRegistrationStatus|[deviceRegistrationState](../resources/intune-devices-deviceregistrationstate.md)|ClientRegistrationStatus. Possible values are: `notRegistered`, `registered`, `revoked`, `keyConflict`, `approvalPending`, `certificateReset`, `notRegisteredPendingEnrollment`, `unknown`.|
|ownerType|[ownerType](../resources/intune-shared-ownertype.md)|OwnerType. Possible values are: `unknown`, `company`, `personal`.|
|managementAgents|[managementAgentType](../resources/intune-shared-managementagenttype.md)|ManagementAgentType. Possible values are: `eas`, `mdm`, `easMdm`, `intuneClient`, `easIntuneClient`, `configurationManagerClient`, `configurationManagerClientMdm`, `configurationManagerClientMdmEas`, `unknown`, `jamf`, `googleCloudDevicePolicyController`, `microsoft365ManagedMdm`.|
|managementState|[managementState](../resources/intune-devices-managementstate.md)|ManagementState. Possible values are: `managed`, `retirePending`, `retireFailed`, `wipePending`, `wipeFailed`, `unhealthy`, `deletePending`, `retireIssued`, `wipeIssued`, `wipeCanceled`, `retireCanceled`, `discovered`.|
|referenceId|String|ReferenceId|
|mdmStatus|String|MDMStatus|
|osVersion|String|OSVersion|
|serialNumber|String|SerialNumber|
|manufacturer|String|Manufacturer|
|model|String|Model|
|osDescription|String|OSDescription|
|entitySource|Int32|EntitySource|
|userId|String|UserId|
|upn|String|UPN|
|userEmail|String|UserEmail|
|userName|String|UserName|
|coManageEligibleStatus|[coManagementEligibleType](../resources/intune-devices-comanagementeligibletype.md)|CoManagementEligibleType. Possible values are: `coManaged`, `eligible`, `eligibleButNotAadJoined`, `needsOSUpdate`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.comanagementEligibleDeviceEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.comanagementEligibleDeviceEntity",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "deviceType": "String",
  "clientRegistrationStatus": "String",
  "ownerType": "String",
  "managementAgents": "String",
  "managementState": "String",
  "referenceId": "String",
  "mdmStatus": "String",
  "osVersion": "String",
  "serialNumber": "String",
  "manufacturer": "String",
  "model": "String",
  "osDescription": "String",
  "entitySource": 1024,
  "userId": "String",
  "upn": "String",
  "userEmail": "String",
  "userName": "String",
  "coManageEligibleStatus": "String"
}
```

