---
title: "windowsAutopilotDeviceIdentity resource type"
description: "The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsAutopilotDeviceIdentity resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsAutopilotDeviceIdentities](../api/intune-enrollment-windowsautopilotdeviceidentity-list.md)|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) collection|List properties and relationships of the [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) objects.|
|[Get windowsAutopilotDeviceIdentity](../api/intune-enrollment-windowsautopilotdeviceidentity-get.md)|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md)|Read properties and relationships of the [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) object.|
|[Create windowsAutopilotDeviceIdentity](../api/intune-enrollment-windowsautopilotdeviceidentity-create.md)|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md)|Create a new [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) object.|
|[Delete windowsAutopilotDeviceIdentity](../api/intune-enrollment-windowsautopilotdeviceidentity-delete.md)|None|Deletes a [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md).|
|[assignUserToDevice action](../api/intune-enrollment-windowsautopilotdeviceidentity-assignusertodevice.md)|None|Assigns user to Autopilot devices.|
|[unassignUserFromDevice action](../api/intune-enrollment-windowsautopilotdeviceidentity-unassignuserfromdevice.md)|None|Unassigns the user from an Autopilot device.|
|[allowNextEnrollment action](../api/intune-enrollment-windowsautopilotdeviceidentity-allownextenrollment.md)|None|Unblocks next autopilot enrollment.|
|[updateDeviceProperties action](../api/intune-enrollment-windowsautopilotdeviceidentity-updatedeviceproperties.md)|None|Updates properties on Autopilot devices.|
|[assignResourceAccountToDevice action](../api/intune-enrollment-windowsautopilotdeviceidentity-assignresourceaccounttodevice.md)|None|Assigns resource account to Autopilot devices.|
|[unassignResourceAccountFromDevice action](../api/intune-enrollment-windowsautopilotdeviceidentity-unassignresourceaccountfromdevice.md)|None|Unassigns the resource account from an Autopilot device.|
|[deleteDevices action](../api/intune-enrollment-windowsautopilotdeviceidentity-deletedevices.md)|[deletedWindowsAutopilotDeviceState](../resources/intune-enrollment-deletedwindowsautopilotdevicestate.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|deploymentProfileAssignmentStatus|[windowsAutopilotProfileAssignmentStatus](../resources/intune-enrollment-windowsautopilotprofileassignmentstatus.md)|Profile assignment status of the Windows autopilot device. Possible values are: `unknown`, `assignedInSync`, `assignedOutOfSync`, `assignedUnkownSyncState`, `notAssigned`, `pending`, `failed`.|
|deploymentProfileAssignmentDetailedStatus|[windowsAutopilotProfileAssignmentDetailedStatus](../resources/intune-enrollment-windowsautopilotprofileassignmentdetailedstatus.md)|Profile assignment detailed status of the Windows autopilot device. Possible values are: `none`, `hardwareRequirementsNotMet`, `surfaceHubProfileNotSupported`, `holoLensProfileNotSupported`, `windowsPcProfileNotSupported`, `surfaceHub2SProfileNotSupported`, `unknownFutureValue`.|
|deploymentProfileAssignedDateTime|DateTimeOffset|Profile set time of the Windows autopilot device.|
|groupTag|String|Group Tag of the Windows autopilot device.|
|purchaseOrderIdentifier|String|Purchase Order Identifier of the Windows autopilot device.|
|serialNumber|String|Serial number of the Windows autopilot device.|
|productKey|String|Product Key of the Windows autopilot device.|
|manufacturer|String|Oem manufacturer of the Windows autopilot device.|
|model|String|Model name of the Windows autopilot device.|
|enrollmentState|[enrollmentState](../resources/intune-shared-enrollmentstate.md)|Intune enrollment state of the Windows autopilot device. Possible values are: `unknown`, `enrolled`, `pendingReset`, `failed`, `notContacted`, `blocked`.|
|lastContactedDateTime|DateTimeOffset|Intune Last Contacted Date Time of the Windows autopilot device.|
|addressableUserName|String|Addressable user name.|
|userPrincipalName|String|User Principal Name.|
|resourceName|String|Resource Name.|
|skuNumber|String|SKU Number|
|systemFamily|String|System Family|
|azureActiveDirectoryDeviceId|String|AAD Device ID - to be deprecated|
|azureAdDeviceId|String|AAD Device ID|
|managedDeviceId|String|Managed Device ID|
|displayName|String|Display Name|
|deviceAccountUpn|String|Surface Hub Device Account Upn|
|deviceAccountPassword|String|Surface Hub Device Account Password|
|deviceFriendlyName|String|Surface Hub Device Friendly Name|
|remediationState|[windowsAutopilotDeviceRemediationState](../resources/intune-enrollment-windowsautopilotdeviceremediationstate.md)|Device Remediation State. Possible values are: `unknown`, `noRemediationRequired`, `automaticRemediationRequired`, `manualRemediationRequired`, `unknownFutureValue`.|
|remediationStateLastModifiedDateTime|DateTimeOffset|RemediationState set time of Autopilot device.|
|userlessEnrollmentStatus|[windowsAutopilotUserlessEnrollmentStatus](../resources/intune-enrollment-windowsautopilotuserlessenrollmentstatus.md)|Enrollment status for userless enrollments. Possible values are: `unknown`, `allowed`, `blocked`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deploymentProfile|[windowsAutopilotDeploymentProfile](../resources/intune-shared-windowsautopilotdeploymentprofile.md)|Deployment profile currently assigned to the Windows autopilot device.|
|intendedDeploymentProfile|[windowsAutopilotDeploymentProfile](../resources/intune-shared-windowsautopilotdeploymentprofile.md)|Deployment profile intended to be assigned to the Windows autopilot device.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsAutopilotDeviceIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAutopilotDeviceIdentity",
  "id": "String (identifier)",
  "deploymentProfileAssignmentStatus": "String",
  "deploymentProfileAssignmentDetailedStatus": "String",
  "deploymentProfileAssignedDateTime": "String (timestamp)",
  "groupTag": "String",
  "purchaseOrderIdentifier": "String",
  "serialNumber": "String",
  "productKey": "String",
  "manufacturer": "String",
  "model": "String",
  "enrollmentState": "String",
  "lastContactedDateTime": "String (timestamp)",
  "addressableUserName": "String",
  "userPrincipalName": "String",
  "resourceName": "String",
  "skuNumber": "String",
  "systemFamily": "String",
  "azureActiveDirectoryDeviceId": "String",
  "azureAdDeviceId": "String",
  "managedDeviceId": "String",
  "displayName": "String",
  "deviceAccountUpn": "String",
  "deviceAccountPassword": "String",
  "deviceFriendlyName": "String",
  "remediationState": "String",
  "remediationStateLastModifiedDateTime": "String (timestamp)",
  "userlessEnrollmentStatus": "String"
}
```