---
title: "Get mobileAppAssignment"
description: "Read properties and relationships of the mobileAppAssignment object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get mobileAppAssignment

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceAppManagement/mobileApps/{mobileAppId}/assignments/{mobileAppAssignmentId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/v1.0/deviceAppManagement/mobileApps/{mobileAppId}/assignments/{mobileAppAssignmentId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 975

{
  "value": {
    "@odata.type": "#microsoft.graph.mobileAppAssignment",
    "id": "591620b7-20b7-5916-b720-1659b7201659",
    "intent": "required",
    "target": {
      "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget"
    },
    "settings": {
      "@odata.type": "microsoft.graph.win32LobAppAssignmentSettings",
      "notifications": "showReboot",
      "restartSettings": {
        "@odata.type": "microsoft.graph.win32LobAppRestartSettings",
        "gracePeriodInMinutes": 4,
        "countdownDisplayBeforeRestartInMinutes": 6,
        "restartNotificationSnoozeDurationInMinutes": 10
      },
      "installTimeSettings": {
        "@odata.type": "microsoft.graph.mobileAppInstallTimeSettings",
        "useLocalTime": true,
        "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
        "deadlineDateTime": "2017-01-01T00:00:21.0378955-08:00"
      },
      "deliveryOptimizationPriority": "foreground"
    }
  }
}
```




