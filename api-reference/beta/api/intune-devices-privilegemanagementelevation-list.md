---
title: "List privilegeManagementElevations"
description: "List properties and relationships of the privilegeManagementElevation objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List privilegeManagementElevations

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/privilegeManagementElevations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [privilegeManagementElevation](../resources/intune-devices-privilegemanagementelevation.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/privilegeManagementElevations
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1070

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegeManagementElevation",
      "id": "1c22d4e2-d4e2-1c22-e2d4-221ce2d4221c",
      "deviceId": "Device Id value",
      "deviceName": "Device Name value",
      "eventDateTime": "2016-12-31T23:59:23.3984029-08:00",
      "elevationType": "unmanagedElevation",
      "filePath": "File Path value",
      "upn": "Upn value",
      "userType": "azureAd",
      "productName": "Product Name value",
      "companyName": "Company Name value",
      "fileVersion": "File Version value",
      "justification": "Justification value",
      "hash": "Hash value",
      "internalName": "Internal Name value",
      "fileDescription": "File Description value",
      "certificatePayload": "Certificate Payload value",
      "result": 6,
      "processType": "parent",
      "ruleId": "Rule Id value",
      "parentProcessName": "Parent Process Name value",
      "policyId": "Policy Id value",
      "policyName": "Policy Name value",
      "systemInitiatedElevation": true
    }
  ]
}
```