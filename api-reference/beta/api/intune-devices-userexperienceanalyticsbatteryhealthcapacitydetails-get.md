---
title: "Get userExperienceAnalyticsBatteryHealthCapacityDetails"
description: "Read properties and relationships of the userExperienceAnalyticsBatteryHealthCapacityDetails object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get userExperienceAnalyticsBatteryHealthCapacityDetails

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md) object.

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
GET /deviceManagement/userExperienceAnalyticsBatteryHealthCapacityDetails
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
If successful, this method returns a `200 OK` response code and [userExperienceAnalyticsBatteryHealthCapacityDetails](../resources/intune-devices-userexperienceanalyticsbatteryhealthcapacitydetails.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsBatteryHealthCapacityDetails
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 351

{
  "value": {
    "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthCapacityDetails",
    "id": "b01fc7df-c7df-b01f-dfc7-1fb0dfc71fb0",
    "activeDevices": 13,
    "batteryCapacityGood": 3,
    "batteryCapacityFair": 3,
    "batteryCapacityPoor": 3,
    "lastRefreshedDateTime": "2017-01-01T00:02:37.7100903-08:00"
  }
}
```
