---
title: "getPolicyNonComplianceSummaryReport action"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# getPolicyNonComplianceSummaryReport action

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All, DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/reports/getPolicyNonComplianceSummaryReport
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
|name|String|Not yet documented|
|select|String collection|Not yet documented|
|search|String|Not yet documented|
|groupBy|String collection|Not yet documented|
|orderBy|String collection|Not yet documented|
|skip|Int32|Not yet documented|
|top|Int32|Not yet documented|
|sessionId|String|Not yet documented|
|filter|String|Not yet documented|



## Response
If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Example

### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- { "blockType": "request" , "name" : "intune_reporting_devicemanagementreports_getpolicynoncompliancesummaryreport_getpolicynoncompliancesummaryreport_action" }-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/reports/getPolicyNonComplianceSummaryReport
Content-type: application/json
Content-length: 278

{
  "name": "Name value",
  "select": [
    "Select value"
  ],
  "search": "Search value",
  "groupBy": [
    "Group By value"
  ],
  "orderBy": [
    "Order By value"
  ],
  "skip": 4,
  "top": 3,
  "sessionId": "Session Id value",
  "filter": "Filter value"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/intune-reporting-devicemanagementreports-getpolicynoncompliancesummaryreport-getpolicynoncompliancesummaryreport-action-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- { "blockType": "response" , "@odata.type" : "microsoft.graph." }-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 107

{
  "value": "Z2V0UG9saWN5Tm9uQ29tcGxpYW5jZVN1bW1hcnlSZXBvcnQgSW50dW5lIERvYyBTYW1wbGUgLTQzMjEwMjAyNg=="
}
```
