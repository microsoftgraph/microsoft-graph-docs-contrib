---
title: "evaluateAssignmentFilter action"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# evaluateAssignmentFilter action

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

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
POST /deviceManagement/evaluateAssignmentFilter
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|data|[assignmentFilterEvaluateRequest](../resources/intune-policyset-assignmentfilterevaluaterequest.md)|Not yet documented|



## Response
If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/evaluateAssignmentFilter

Content-type: application/json
Content-length: 266

{
  "data": {
    "@odata.type": "microsoft.graph.assignmentFilterEvaluateRequest",
    "platform": "androidForWork",
    "rule": "Rule value",
    "top": 3,
    "skip": 4,
    "orderBy": [
      "Order By value"
    ],
    "search": "Search value"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 91

{
  "value": "ZXZhbHVhdGVBc3NpZ25tZW50RmlsdGVyIEludHVuZSBEb2MgU2FtcGxlIC0yNTU4NTk4OTA="
}
```
