---
title: "Update detectionRule"
description: "Update the properties of a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.topic: reference
---

# Update detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [custom detection rule](../resources/security-detectionrule.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_detectionrule_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-detectionrule-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/rules/detectionRules/{ruleId}
```

## Request headers
| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

Provide the properties of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) to update, and those properties only.
The properties that can be updated are specified in the following table:

| Property                                         | Type                                                                                         | Description                                                      |
|:-------------------------------------------------|:---------------------------------------------------------------------------------------------|:-----------------------------------------------------------------|
| displayName                                      | String                                                                                       | Optional.                                                        |
| isEnabled                                        | Boolean                                                                                      | Optional.                                                        |
| detectionAction/alertTemplate/title              | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/category           | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/description        | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/recommendedActions | String                                                                                       | Optional. Provide 'null' to delete the existing response actions |
| detectionAction/alertTemplate/severity           | [microsoft.graph.alertSeverity](../resources/enums.md#alertseverity-values)                  | Optional.                                                        |
| detectionAction/alertTemplate/impactedAssets     | [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md)             | Optional. Provide 'null' to delete the existing impacted assets. |
| detectionAction/responseActions                  | [microsoft.graph.security.responseAction](../resources/security-responseaction.md)           | Optional.                                                        |
| detectionAction/organizationalScope              | [microsoft.graph.security.organizationalScope](../resources/security-organizationalscope.md) | Optional.                                                        |
| queryCondition/queryText                         | String                                                                                       | Optional.                                                        |
| schedule/period                                  | String                                                                                       | Optional.                                                        |

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/rules/detectionRules/35079
Content-Type: application/json
{
  "schedule": {
    "period": "24H"
  },
  "detectionAction": {
    "alertTemplate": {
      "title": "Different alert title"
    }
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.detectionRule",
  "id": "35079",
  "displayName": "Some rule name",
  "isEnabled": true,
  "createdBy": "MichaelMekler@winatptestlic06.ccsctp.net",
  "createdDateTime": "2023-06-25T09:37:28.6149005Z",
  "lastModifiedDateTime": "2023-06-25T09:38:09.5960938Z",
  "lastModifiedBy": "MichaelMekler@winatptestlic06.ccsctp.net",
  "detectorId": "67aa92a1-b04b-4f2a-a223-236968a3da96",
  "queryCondition": {
    "queryText": "DeviceProcessEvents | take 1",
    "lastModifiedDateTime": null
  },
  "schedule": {
    "period": "24H",
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
      "title": "Different alert title",
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

