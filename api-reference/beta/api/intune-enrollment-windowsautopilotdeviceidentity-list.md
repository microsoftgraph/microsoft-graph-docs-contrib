---
title: "List windowsAutopilotDeviceIdentities"
description: "List properties and relationships of the windowsAutopilotDeviceIdentity objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List windowsAutopilotDeviceIdentities

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.Read.All, DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.Read.All, DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/windowsAutopilotDeviceIdentities
GET /deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}/deploymentProfile/assignedDevices
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/windowsAutopilotDeviceIdentities
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1607

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsAutopilotDeviceIdentity",
      "id": "fac6f0b1-f0b1-fac6-b1f0-c6fab1f0c6fa",
      "deploymentProfileAssignmentStatus": "assignedInSync",
      "deploymentProfileAssignmentDetailedStatus": "hardwareRequirementsNotMet",
      "deploymentProfileAssignedDateTime": "2016-12-31T23:58:26.2447023-08:00",
      "groupTag": "Group Tag value",
      "purchaseOrderIdentifier": "Purchase Order Identifier value",
      "serialNumber": "Serial Number value",
      "productKey": "Product Key value",
      "manufacturer": "Manufacturer value",
      "model": "Model value",
      "enrollmentState": "enrolled",
      "lastContactedDateTime": "2016-12-31T23:58:44.2908994-08:00",
      "addressableUserName": "Addressable User Name value",
      "userPrincipalName": "User Principal Name value",
      "resourceName": "Resource Name value",
      "skuNumber": "Sku Number value",
      "systemFamily": "System Family value",
      "azureActiveDirectoryDeviceId": "Azure Active Directory Device Id value",
      "azureAdDeviceId": "Azure Ad Device Id value",
      "managedDeviceId": "Managed Device Id value",
      "displayName": "Display Name value",
      "deviceAccountUpn": "Device Account Upn value",
      "deviceAccountPassword": "Device Account Password value",
      "deviceFriendlyName": "Device Friendly Name value",
      "remediationState": "noRemediationRequired",
      "remediationStateLastModifiedDateTime": "2017-01-01T00:00:10.730021-08:00",
      "userlessEnrollmentStatus": "allowed"
    }
  ]
}
```