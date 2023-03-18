---
title: "Update endpointPrivilegeManagementProvisioningStatus"
description: "Update the properties of a endpointPrivilegeManagementProvisioningStatus object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update endpointPrivilegeManagementProvisioningStatus

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/endpointPrivilegeManagementProvisioningStatus
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md) object.

The following table shows the properties that are required when you create the [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier represents Intune Account identifier.|
|licenseType|[licenseType](../resources/intune-deviceconfig-licensetype.md)|Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid. Possible values are: `notPaid`, `paid`, `trial`, `unknownFutureValue`.|
|onboardedToMicrosoftManagedPlatform|Boolean|Indicates whether tenant is onboarded to Microsoft Managed Platform - Cloud (MMPC). When set to true, implies tenant is onboarded and when set to false, implies tenant is not onboarded. Default set to false.|



## Response
If successful, this method returns a `200 OK` response code and an updated [endpointPrivilegeManagementProvisioningStatus](../resources/intune-deviceconfig-endpointprivilegemanagementprovisioningstatus.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/endpointPrivilegeManagementProvisioningStatus
Content-type: application/json
Content-length: 161

{
  "@odata.type": "#microsoft.graph.endpointPrivilegeManagementProvisioningStatus",
  "licenseType": "paid",
  "onboardedToMicrosoftManagedPlatform": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 210

{
  "@odata.type": "#microsoft.graph.endpointPrivilegeManagementProvisioningStatus",
  "id": "49a26797-6797-49a2-9767-a2499767a249",
  "licenseType": "paid",
  "onboardedToMicrosoftManagedPlatform": true
}
```
