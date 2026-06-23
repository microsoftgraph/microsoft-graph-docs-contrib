---
title: "List detectionRule objects"
description: "Get a list of detectionRule objects and their properties."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/25/2026
---

# List detectionRule objects

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [detectionRule](../resources/security-detectionrule.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-rulesroot-list-detectionrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-rulesroot-list-detectionrules-permissions.md)]

[!INCLUDE [rbac-security-detection-rules-apis-read](../includes/rbac-for-apis/rbac-security-detection-rules-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/rules/detectionRules
```

## Optional query parameters

This method supports the `$select`, `$top`, `$skip`, `$count`, `$filter`, and `$orderby` [OData query parameters](/graph/query-parameters) to help customize the response. For the per-property list of supported `$filter` operators and `$orderby` properties, see [detectionRule properties](../resources/security-detectionrule.md#properties).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_detectionrules"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/rules/detectionRules
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-detectionrules-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-detectionrules-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-detectionrules-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-detectionrules-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-detectionrules-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-detectionrules-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-detectionrules-python-snippets.md)]
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.detectionRule",
      "id": "office-encoded-powershell",
      "displayName": "Suspicious encoded PowerShell from Office",
      "description": "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.",
      "status": "enabled",
      "createdBy": "alice@contoso.com",
      "createdDateTime": "2026-05-25T10:15:00Z",
      "lastModifiedBy": "alice@contoso.com",
      "lastModifiedDateTime": "2026-05-25T10:15:00Z",
      "queryCondition": {
        "queryText": "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'"
      },
      "schedule": {
        "frequency": "PT1H"
      },
      "detectionAction": {
        "alertTemplate": {
          "title": "Suspicious encoded PowerShell from Office",
          "description": "An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.",
          "severity": "high",
          "recommendedActions": "Investigate the parent Office document, isolate the device, and review the user's recent email activity.",
          "entityMappings": {
            "accounts": [
              {
                "nameColumn": "AccountName",
                "sidColumn": "AccountSid"
              }
            ]
          },
          "tactics": [
            {
              "tactic": "Execution",
              "techniques": [
                {
                  "technique": "T1059.001"
                }
              ]
            }
          ]
        },
        "automatedActions": {
          "isolateDevices": [
            {
              "deviceIdColumn": "DeviceId",
              "isolationType": "full"
            }
          ],
          "initiateInvestigations": [
            {
              "deviceIdColumn": "DeviceId"
            }
          ]
        }
      }
    }
  ]
}
```
