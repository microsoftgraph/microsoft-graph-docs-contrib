---
title: "Update detectionRule"
description: "Update the properties of a detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/25/2026
---

# Update detectionRule

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [detectionRule](../resources/security-detectionrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_detectionrule_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-update-permissions.md)]

[!INCLUDE [rbac-security-detection-rules-apis-write](../includes/rbac-for-apis/rbac-security-detection-rules-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/rules/detectionRules/{detectionRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|A user-supplied description of the detection rule.|
|detectionAction|[microsoft.graph.security.detectionAction](../resources/security-detectionaction.md)|The actions taken when a detection is made by this rule, including the alert that is created and any automated response actions.|
|displayName|String|The display name of the rule.|
|isEnabled|Boolean|**Deprecated.** Use **status** instead. The `isEnabled` property will be removed from this resource on 2026-10-01.|
|queryCondition|[microsoft.graph.security.queryCondition](../resources/security-querycondition.md)|The advanced hunting query that defines the detection logic of this rule.|
|schedule|[microsoft.graph.security.ruleSchedule](../resources/security-ruleschedule.md)|The triggering schedule of this rule.|
|status|[microsoft.graph.security.detectionRuleStatus](../resources/enums-security.md#detectionrulestatus-values)|The current run status of the rule. The possible values are: `enabled`, `disabled`, `autoDisabled`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_detectionrule"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/rules/detectionRules/office-encoded-powershell
Content-Type: application/json

{
  "status": "disabled",
  "queryCondition": {
    "queryText": "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'"
  }
}
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
  "status": "disabled",
  "createdBy": "alice@contoso.com",
  "createdDateTime": "2026-05-25T10:15:00Z",
  "lastModifiedBy": "alice@contoso.com",
  "lastModifiedDateTime": "2026-05-28T14:30:00Z",
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
