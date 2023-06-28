---
title: "Create detectionRule"
description: "Create a new microsoft.graph.security.detectionRule object"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Create detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [Custom Detection Rule](../resources/security-detectionrule.md).
With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in their organization network.
Using [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), custom detection rules automatically trigger [alerts](../resources/security-alert.md) as well as response actions once there are events matching their KQL queries.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CustomDetection.ReadWrite.All               |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CustomDetection.ReadWrite.All               |

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
Within the request body supply a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md). Some metadata fields are unnecessary and will be ignored, such as 'createdBy', 'lastModifiedDateTime', etc.

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_detectionrule"
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
The following is an example of the response
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

