---
title: "Update deviceAndAppManagementPayloadAssignment"
description: "Update the properties of a deviceAndAppManagementPayloadAssignment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementPayloadAssignment

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/mobileApps/{mobileAppId}/targetAssignments/{deviceAndAppManagementPayloadAssignmentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object.

The following table shows the properties that are required when you create the [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this assignment. Returned by default. This property is read-only.|
|payloadId|String|The unique identifier (Guid) for the payload associated with this assignment. Returned by default.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group for this assignment. This value will be supplied on write operation only for direct/policy set assignments. This value will not be supplied on write operation for deployment assignments. However, it is populated when reading any assignment.|
|assignmentDetail|[deviceAndAppManagementAssignmentDetail](../resources/intune-shared-deviceandappmanagementassignmentdetail.md)|Type encapsulating additional properties for an assignment except for assignment target (group, assignment filter, identifier information).|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/{mobileAppId}/targetAssignments/{deviceAndAppManagementPayloadAssignmentId}
Content-type: application/json
Content-length: 1104

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementPayloadAssignment",
  "payloadId": "Payload Id value",
  "target": {
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  },
  "assignmentDetail": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentDetail",
    "intent": "requiredUninstall",
    "settings": {
      "@odata.type": "microsoft.graph.winGetAppAssignmentSettings",
      "notifications": "showReboot",
      "restartSettings": {
        "@odata.type": "microsoft.graph.winGetAppRestartSettings",
        "gracePeriodInMinutes": 4,
        "countdownDisplayBeforeRestartInMinutes": 6,
        "restartNotificationSnoozeDurationInMinutes": 10
      },
      "installTimeSettings": {
        "@odata.type": "microsoft.graph.winGetAppInstallTimeSettings",
        "useLocalTime": true,
        "deadlineDateTime": "2017-01-01T00:00:21.0378955-08:00"
      }
    }
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1153

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementPayloadAssignment",
  "id": "24f9df9d-df9d-24f9-9ddf-f9249ddff924",
  "payloadId": "Payload Id value",
  "target": {
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "Device And App Management Assignment Filter Id value",
    "deviceAndAppManagementAssignmentFilterType": "include"
  },
  "assignmentDetail": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentDetail",
    "intent": "requiredUninstall",
    "settings": {
      "@odata.type": "microsoft.graph.winGetAppAssignmentSettings",
      "notifications": "showReboot",
      "restartSettings": {
        "@odata.type": "microsoft.graph.winGetAppRestartSettings",
        "gracePeriodInMinutes": 4,
        "countdownDisplayBeforeRestartInMinutes": 6,
        "restartNotificationSnoozeDurationInMinutes": 10
      },
      "installTimeSettings": {
        "@odata.type": "microsoft.graph.winGetAppInstallTimeSettings",
        "useLocalTime": true,
        "deadlineDateTime": "2017-01-01T00:00:21.0378955-08:00"
      }
    }
  }
}
```