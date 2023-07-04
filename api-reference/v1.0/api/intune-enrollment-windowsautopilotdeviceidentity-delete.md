---
title: "Delete windowsAutopilotDeviceIdentity"
description: "Deletes a windowsAutopilotDeviceIdentity."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Delete windowsAutopilotDeviceIdentity

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Deletes a [windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_enrollment_windowsautopilotdeviceidentity_delete_delete_windowsautopilotdeviceidentity" }-->
``` http
DELETE https://graph.microsoft.com/v1.0/deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-enrollment-windowsautopilotdeviceidentity-delete-delete-windowsautopilotdeviceidentity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response"}-->
``` http
HTTP/1.1 204 No Content
```
