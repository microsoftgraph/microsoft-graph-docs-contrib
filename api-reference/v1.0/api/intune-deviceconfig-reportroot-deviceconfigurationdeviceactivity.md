---
title: "deviceConfigurationDeviceActivity function"
description: "Metadata for the device configuration device activity report"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# deviceConfigurationDeviceActivity function

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Metadata for the device configuration device activity report

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
GET /reports/deviceConfigurationDeviceActivity
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a [report](../resources/intune-deviceconfig-report.md) in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity_deviceconfigurationdeviceactivity_function" }-->
``` http
GET https://graph.microsoft.com/v1.0/reports/deviceConfigurationDeviceActivity
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-deviceconfig-reportroot-deviceconfigurationdeviceactivity-deviceconfigurationdeviceactivity-function-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph.report" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 136

{
  "value": {
    "@odata.type": "microsoft.graph.report",
    "content": "Y29udGVudCBJbnR1bmUgRG9jIFNhbXBsZSAxNTYxOTcwNjY1"
  }
}
```
