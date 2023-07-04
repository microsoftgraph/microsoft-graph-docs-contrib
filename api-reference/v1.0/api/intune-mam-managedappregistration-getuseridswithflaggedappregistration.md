---
title: "getUserIdsWithFlaggedAppRegistration function"
description: "Not yet documented"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# getUserIdsWithFlaggedAppRegistration function

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Permissions
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
GET /deviceAppManagement/managedAppRegistrations/getUserIdsWithFlaggedAppRegistration
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this function returns a `200 OK` response code and a String collection in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_mam_managedappregistration_getuseridswithflaggedappregistration_getuseridswithflaggedappregistration_function" }-->
``` http
GET https://graph.microsoft.com/v1.0/deviceAppManagement/managedAppRegistrations/getUserIdsWithFlaggedAppRegistration
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-mam-managedappregistration-getuseridswithflaggedappregistration-getuseridswithflaggedappregistration-function-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 79

{
  "value": [
    "Get User Ids With Flagged App Registration value"
  ]
}
```
