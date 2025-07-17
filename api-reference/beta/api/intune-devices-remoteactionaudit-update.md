---
title: "Update remoteActionAudit"
description: "Update the properties of a remoteActionAudit object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update remoteActionAudit

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/remoteActionAudits/{remoteActionAuditId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object.

The following table shows the properties that are required when you create the [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Report Id.|
|deviceDisplayName|String|Intune device name.|
|userName|String|\[deprecated\] Please use InitiatedByUserPrincipalName instead.|
|initiatedByUserPrincipalName|String|User who initiated the device action, format is UPN.|
|action|[remoteAction](../resources/intune-devices-remoteaction.md)|The action name. Possible values are: `unknown`, `factoryReset`, `removeCompanyData`, `resetPasscode`, `remoteLock`, `enableLostMode`, `disableLostMode`, `locateDevice`, `rebootNow`, `recoverPasscode`, `cleanWindowsDevice`, `logoutSharedAppleDeviceActiveUser`, `quickScan`, `fullScan`, `windowsDefenderUpdateSignatures`, `factoryResetKeepEnrollmentData`, `updateDeviceAccount`, `automaticRedeployment`, `shutDown`, `rotateBitLockerKeys`, `rotateFileVaultKey`, `getFileVaultKey`, `setDeviceName`, `activateDeviceEsim`, `deprovision`, `disable`, `reenable`, `moveDeviceToOrganizationalUnit`, `initiateMobileDeviceManagementKeyRecovery`, `initiateOnDemandProactiveRemediation`, `rotateLocalAdminPassword`, `unknownFutureValue`, `launchRemoteHelp`, `revokeAppleVppLicenses`, `removeDeviceFirmwareConfigurationInterfaceManagement`, `pauseConfigurationRefresh`, `initiateDeviceAttestation`, `changeAssignments`, `delete`.|
|requestDateTime|DateTimeOffset|Time when the action was issued, given in UTC.|
|deviceOwnerUserPrincipalName|String|Upn of the device owner.|
|deviceIMEI|String|IMEI of the device.|
|actionState|[actionState](../resources/intune-shared-actionstate.md)|Action state. Possible values are: `none`, `pending`, `canceled`, `active`, `done`, `failed`, `notSupported`.|
|managedDeviceId|String|Action target.|
|deviceActionDetails|[keyValuePair_2OfString_String](../resources/intune-devices-keyvaluepair_2ofstring_string.md) collection|DeviceAction details|
|deviceActionCategory|[deviceActionCategory](../resources/intune-devices-deviceactioncategory.md)|DeviceAction category. Possible values are: `single`, `bulk`.|
|bulkDeviceActionId|String|BulkAction ID|



## Response
If successful, this method returns a `200 OK` response code and an updated [remoteActionAudit](../resources/intune-devices-remoteactionaudit.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/remoteActionAudits/{remoteActionAuditId}
Content-type: application/json
Content-length: 713

{
  "@odata.type": "#microsoft.graph.remoteActionAudit",
  "deviceDisplayName": "Device Display Name value",
  "userName": "User Name value",
  "initiatedByUserPrincipalName": "Initiated By User Principal Name value",
  "action": "factoryReset",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00",
  "deviceOwnerUserPrincipalName": "Device Owner User Principal Name value",
  "deviceIMEI": "Device IMEI value",
  "actionState": "pending",
  "managedDeviceId": "Managed Device Id value",
  "deviceActionDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair_2OfString_String"
    }
  ],
  "deviceActionCategory": "bulk",
  "bulkDeviceActionId": "Bulk Device Action Id value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 762

{
  "@odata.type": "#microsoft.graph.remoteActionAudit",
  "id": "477f8d24-8d24-477f-248d-7f47248d7f47",
  "deviceDisplayName": "Device Display Name value",
  "userName": "User Name value",
  "initiatedByUserPrincipalName": "Initiated By User Principal Name value",
  "action": "factoryReset",
  "requestDateTime": "2017-01-01T00:03:07.1589002-08:00",
  "deviceOwnerUserPrincipalName": "Device Owner User Principal Name value",
  "deviceIMEI": "Device IMEI value",
  "actionState": "pending",
  "managedDeviceId": "Managed Device Id value",
  "deviceActionDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair_2OfString_String"
    }
  ],
  "deviceActionCategory": "bulk",
  "bulkDeviceActionId": "Bulk Device Action Id value"
}
```