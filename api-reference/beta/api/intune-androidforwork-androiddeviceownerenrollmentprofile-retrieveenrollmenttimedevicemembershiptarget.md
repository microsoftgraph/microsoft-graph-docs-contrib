---
title: "retrieveEnrollmentTimeDeviceMembershipTarget action"
description: "Intune Androidforwork Androiddeviceownerenrollmentprofile Retrieveenrollmenttimedevicemembershiptarget Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# retrieveEnrollmentTimeDeviceMembershipTarget action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/androidDeviceOwnerEnrollmentProfiles/{androidDeviceOwnerEnrollmentProfileId}/retrieveEnrollmentTimeDeviceMembershipTarget
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `200 OK` response code and a [enrollmentTimeDeviceMembershipTargetResult](../resources/intune-shared-enrollmenttimedevicemembershiptargetresult.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/androidDeviceOwnerEnrollmentProfiles/{androidDeviceOwnerEnrollmentProfileId}/retrieveEnrollmentTimeDeviceMembershipTarget
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 455

{
  "value": {
    "@odata.type": "microsoft.graph.enrollmentTimeDeviceMembershipTargetResult",
    "validationSucceeded": true,
    "enrollmentTimeDeviceMembershipTargetValidationStatuses": [
      {
        "@odata.type": "microsoft.graph.enrollmentTimeDeviceMembershipTargetStatus",
        "targetId": "Target Id value",
        "validationSucceeded": true,
        "targetValidationErrorCode": "securityGroupNotFound"
      }
    ]
  }
}
```