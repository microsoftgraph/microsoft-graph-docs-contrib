---
title: "Update detectionRule"
description: "Update the properties of a microsoft.graph.security.detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Update detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [Custom Detection Rule](../resources/security-detectionrule.md).

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
PATCH /security/rules/detectionRules/{ruleId}
```

## Request headers
| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

Provide the properties of a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) which are to be updated, and those properties only.
The properties which are updateable are specified in the following table:

| Property                                         | Type                                                                                         | Description                                                      |
|:-------------------------------------------------|:---------------------------------------------------------------------------------------------|:-----------------------------------------------------------------|
| displayName                                      | String                                                                                       | Optional.                                                        |
| isEnabled                                        | Boolean                                                                                      | Optional.                                                        |
| detectionAction/alertTemplate/title              | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/category           | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/description        | String                                                                                       | Optional.                                                        |
| detectionAction/alertTemplate/recommendedActions | String                                                                                       | Optional. Provide 'null' to delete the existing response actions |
| detectionAction/alertTemplate/severity           | [microsoft.graph.alertSeverity]((#alertseverity-values))                                     | Optional.                                                        |
| detectionAction/alertTemplate/impactedAssets     | [microsoft.graph.security.impactedAsset](../resources/security-impactedasset.md)             | Optional. Provide 'null' to delete the existing inpacted assets. |
| detectionAction/responseActions                  | [microsoft.graph.security.responseAction](../resources/security-responseaction.md)           | Optional.                                                        |
| detectionAction/organizationalScope              | [microsoft.graph.security.organizationalscope](../resources/security-organizationalscope.md) | Optional.                                                        |
| queryCondition/queryText                         | String                                                                                       | Optional.                                                        |
| schedule/period                                  | String                                                                                       | Optional.                                                        |

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_detectionrule"
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
The following is an example of the response
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

