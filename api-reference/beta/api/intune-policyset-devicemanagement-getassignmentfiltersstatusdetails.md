---
title: "getAssignmentFiltersStatusDetails action"
description: "Intune Policyset Devicemanagement Getassignmentfiltersstatusdetails Api ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# getAssignmentFiltersStatusDetails action

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/getAssignmentFiltersStatusDetails
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|managedDeviceId|String||
|payloadId|String||
|userId|String||
|assignmentFilterIds|String collection||
|top|Int32||
|skip|Int32||



## Response
If successful, this action returns a `200 OK` response code and a [assignmentFilterStatusDetails](../resources/intune-policyset-assignmentfilterstatusdetails.md) in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/getAssignmentFiltersStatusDetails

Content-type: application/json
Content-length: 214

{
  "managedDeviceId": "Managed Device Id value",
  "payloadId": "Payload Id value",
  "userId": "User Id value",
  "assignmentFilterIds": [
    "Assignment Filter Ids value"
  ],
  "top": 3,
  "skip": 4
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1216

{
  "value": {
    "@odata.type": "microsoft.graph.assignmentFilterStatusDetails",
    "managedDeviceId": "Managed Device Id value",
    "payloadId": "Payload Id value",
    "userId": "User Id value",
    "deviceProperties": [
      {
        "@odata.type": "microsoft.graph.keyValuePair",
        "name": "Name value",
        "value": "Value value"
      }
    ],
    "evalutionSummaries": [
      {
        "@odata.type": "microsoft.graph.assignmentFilterEvaluationSummary",
        "assignmentFilterId": "Assignment Filter Id value",
        "assignmentFilterLastModifiedDateTime": "2017-01-01T00:02:50.0900701-08:00",
        "assignmentFilterDisplayName": "Assignment Filter Display Name value",
        "assignmentFilterPlatform": "androidForWork",
        "evaluationResult": "match",
        "evaluationDateTime": "2016-12-31T23:58:01.2047675-08:00",
        "assignmentFilterType": "include",
        "assignmentFilterTypeAndEvaluationResults": [
          {
            "@odata.type": "microsoft.graph.assignmentFilterTypeAndEvaluationResult",
            "assignmentFilterType": "include",
            "evaluationResult": "match"
          }
        ]
      }
    ]
  }
}
```