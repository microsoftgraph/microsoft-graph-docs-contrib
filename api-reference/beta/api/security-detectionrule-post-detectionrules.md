---
title: "Create detectionRule"
description: "Create a new custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [custom detection rule](../resources/security-detectionrule.md).
With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in their organization's network.
Custom detection rules, which are written in [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), automatically trigger [alerts](../resources/security-alert.md) and response actions once there are events matching their KQL queries.


[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_detectionrule_post_detectionrules" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-post-detectionrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/rules/detectionRules
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
Within the request body, supply a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md). Some metadata fields are unnecessary and are ignored, such as 'createdBy' and 'lastModifiedDateTime'.

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/rules/detectionRules
Content-Type: application/json
{
  "displayName": "Some rule name",
  "isEnabled": true,
  "queryCondition": {
    "queryText": "DeviceProcessEvents | take 1"
  },
  "schedule": {
    "period": "12H"
  },
  "detectionAction": {
    "alertTemplate": {
      "title": "Some alert title",
      "description": "Some alert description",
      "severity": "medium",
      "category": "Execution",
      "recommendedActions": null,
      "mitreTechniques": [],
      "impactedAssets": [
        {
          "@odata.type": "#microsoft.graph.security.impactedDeviceAsset",
          "identifier": "deviceId"
        }
      ]
    },
    "organizationalScope": null,
    "responseActions": [
      {
        "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
        "identifier": "deviceId",
        "isolationType": "full"
      }
    ]
  }
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "35079",
  "displayName": "Some rule name",
  "isEnabled": true,
  "createdBy": "MichaelMekler@winatptestlic06.ccsctp.net",
  "createdDateTime": "2023-06-25T09:37:28.6149005Z",
  "lastModifiedDateTime": "2023-06-25T09:37:28.6149005Z",
  "lastModifiedBy": "MichaelMekler@winatptestlic06.ccsctp.net",
  "detectorId": "67aa92a1-b04b-4f2a-a223-236968a3da96",
  "queryCondition": {
    "queryText": "DeviceProcessEvents | take 1",
    "lastModifiedDateTime": null
  },
  "schedule": {
    "period": "12H",
    "nextRunDateTime": "2023-06-25T09:37:28.6149005Z"
  },
  "lastRunDetails": {
    "lastRunDateTime": null,
    "status": null,
    "failureReason": null,
    "errorCode": null
  },
  "detectionAction": {
    "alertTemplate": {
      "title": "Some alert title",
      "description": "Some alert description",
      "severity": "medium",
      "category": "Execution",
      "recommendedActions": null,
      "mitreTechniques": [],
      "impactedAssets": [
        {
          "@odata.type": "#microsoft.graph.security.impactedDeviceAsset",
          "identifier": "deviceId"
        }
      ]
    },
    "organizationalScope": null,
    "responseActions": [
      {
        "@odata.type": "#microsoft.graph.security.isolateDeviceResponseAction",
        "isolationType": "full",
        "identifier": "deviceId"
      }
    ]
  }
}
```

