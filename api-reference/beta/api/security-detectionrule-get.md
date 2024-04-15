---
title: "Get detectionRule"
description: "Read the properties and relationships of a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relatonships of a [custom detection rule](../resources/security-detectionrule.md).

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in their organization network. 
Custom detection rules, which are written in [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), automatically trigger [alerts](../resources/security-alert.md) and response actions when events occur that match a KQL query.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_detectionrule_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/rules/detectionRules/{ruleId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_detectionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/rules/detectionRules/7506
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-detectionrule-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-detectionrule-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-detectionrule-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-detectionrule-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-detectionrule-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-detectionrule-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-detectionrule-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-detectionrule-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.detectionRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "7506",
  "displayName": "ban file",
  "isEnabled": true,
  "createdBy": "NaderK@winatptestlic06.ccsctp.net",
  "createdDateTime": "2021-02-28T16:28:15.3863467Z",
  "lastModifiedDateTime": "2023-05-24T09:26:11.8630516Z",
  "lastModifiedBy": "GlobalAdmin@unifiedrbactest3.ccsctp.net",
  "detectorId": "67895317-b2a8-4ac3-8f8b-fa6b7765f2fe",
  "queryCondition": {
    "queryText": "DeviceFileEvents\r\n| where Timestamp > ago(1h)\r\n| where FileName == \"ifz30zlx.dll\"",
    "lastModifiedDateTime": null
  },
  "schedule": {
    "period": "24H",
    "nextRunDateTime": "2023-06-26T08:52:06.1766667Z"
  },
  "lastRunDetails": {
    "lastRunDateTime": "2023-06-25T08:52:06.1766667Z",
    "status": null,
    "failureReason": null,
    "errorCode": null
  },
  "detectionAction": {
    "alertTemplate": {
      "title": "unwanted dll",
      "description": "test",
      "severity": "low",
      "category": "Malware",
      "recommendedActions": null,
      "mitreTechniques": [],
      "impactedAssets": []
    },
    "organizationalScope": null,
    "responseActions": [
      {
        "@odata.type": "#microsoft.graph.security.restrictAppExecutionResponseAction",
        "identifier": "deviceId"
      },
      {
        "@odata.type": "#microsoft.graph.security.initiateInvestigationResponseAction",
        "identifier": "deviceId"
      },
      {
        "@odata.type": "#microsoft.graph.security.collectInvestigationPackageResponseAction",
        "identifier": "deviceId"
      },
      {
        "@odata.type": "#microsoft.graph.security.runAntivirusScanResponseAction",
        "identifier": "deviceId"
      },
      {
        "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
        "isolationType": "full",
        "identifier": "deviceId"
      },
      {
        "@odata.type": "#microsoft.graph.security.blockFileResponseAction",
        "identifier": "sha1",
        "deviceGroupNames": []
      }
    ]
  }
}
```

