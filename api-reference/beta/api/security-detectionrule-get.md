---
title: "Get detectionRule"
description: "Read the properties and relationships of a detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/25/2026
---

# Get detectionRule

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [detectionRule](../resources/security-detectionrule.md) object.

With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in your organization's network. Custom detection rules, which are written in [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), automatically trigger [alerts](../resources/security-alert.md) and automated actions when events occur that match a KQL query.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-detectionrule-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-get-permissions.md)]

[!INCLUDE [rbac-security-detection-rules-apis-read](../includes/rbac-for-apis/rbac-security-detection-rules-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/rules/detectionRules/{detectionRuleId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_detectionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/rules/detectionRules/office-encoded-powershell
```

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
```