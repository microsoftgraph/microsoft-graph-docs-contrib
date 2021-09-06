---
title: "Create userExperienceAnalyticsModelScores"
description: "Create a new userExperienceAnalyticsModelScores object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Create userExperienceAnalyticsModelScores

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [userExperienceAnalyticsModelScores](../resources/intune-devices-userexperienceanalyticsmodelscores.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/userExperienceAnalyticsModelScores
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the userExperienceAnalyticsModelScores object.

The following table shows the properties that are required when you create the userExperienceAnalyticsModelScores.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics model scores object.|
|model|String|A unique identifier of the user experience analytics model scores: device model.|
|manufacturer|String|A unique identifier of the user experience analytics model scores: device manufacturer.|
|modelDeviceCount|Int64|The user experience analytics model device count. Valid values -9.22337203685478E+18 to 9.22337203685478E+18|
|endpointAnalyticsScore|Double|The user experience analytics model score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|startupPerformanceScore|Double|The user experience analytics model startup performance score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|appReliabilityScore|Double|The user experience analytics model app reliability score. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics model. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`.|



## Response
If successful, this method returns a `201 Created` response code and a [userExperienceAnalyticsModelScores](../resources/intune-devices-userexperienceanalyticsmodelscores.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsModelScores
Content-type: application/json
Content-length: 351

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsModelScores",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "modelDeviceCount": 0,
  "endpointAnalyticsScore": 7.333333333333333,
  "startupPerformanceScore": 7.666666666666667,
  "appReliabilityScore": 6.333333333333333,
  "healthStatus": "insufficientData"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 400

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsModelScores",
  "id": "f2c0f69c-f69c-f2c0-9cf6-c0f29cf6c0f2",
  "model": "Model value",
  "manufacturer": "Manufacturer value",
  "modelDeviceCount": 0,
  "endpointAnalyticsScore": 7.333333333333333,
  "startupPerformanceScore": 7.666666666666667,
  "appReliabilityScore": 6.333333333333333,
  "healthStatus": "insufficientData"
}
```



