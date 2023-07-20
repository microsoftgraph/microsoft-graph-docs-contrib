---
title: "Get detectionRule"
description: "Read the properties and relationships of a microsoft.graph.security.detectionRule object."
author: "mmekler"
ms.localizationpriority: medium
ROBOTS: NOINDEX
ms.prod: "security"
doc_type: apiPageType
---

# Get detectionRule
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a [Custom Detection Rule](../resources/security-detectionrule.md).
With custom detections, you can proactively monitor for and respond to various events and system states, including suspected breach activity and misconfigured assets in their organization network. 
Using [Kusto query language (KQL)](/azure/data-explorer/kusto/query/), custom detection rules automatically trigger [alerts](../resources/security-alert.md) as well as response actions once there are events matching their KQL queries.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type| Permissions (from least to most privileged) |
|:---|:--------------------------------------------|
|Delegated (work or school account)| CustomDetection.Read.All                    |
|Delegated (personal Microsoft account)| Not supported.                              |
|Application| CustomDetection.Read.All                    |

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
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_detectionrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/rules/detectionRules/7506
```


### Response
The following is an example of the response
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

