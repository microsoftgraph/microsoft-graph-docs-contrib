---
title: "Get alert"
description: "Read the properties and relationships of an alert object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get alert
Namespace: microsoft.graph

Read the properties and relationships of an [alert](../resources/alert.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/alerts/{alertId}
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

If successful, this method returns a `200 OK` response code and an [alert](../resources/alert.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_alert"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/alerts/{alertId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.alert"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.alert",
    "id": "77d7b97e-b97e-77d7-7eb9-d7777eb9d777",
    "activityGroupName": "String",
    "alertDetections": [
      {
        "@odata.type": "microsoft.graph.alertDetection"
      }
    ],
    "assignedTo": "String",
    "azureSubscriptionId": "String",
    "azureTenantId": "String",
    "category": "String",
    "closedDateTime": "String (timestamp)",
    "cloudAppStates": [
      {
        "@odata.type": "microsoft.graph.cloudAppSecurityState"
      }
    ],
    "comments": [
      "String"
    ],
    "confidence": "Integer",
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "detectionIds": [
      "String"
    ],
    "eventDateTime": "String (timestamp)",
    "feedback": "String",
    "fileStates": [
      {
        "@odata.type": "microsoft.graph.fileSecurityState"
      }
    ],
    "historyStates": [
      {
        "@odata.type": "microsoft.graph.alertHistoryState"
      }
    ],
    "hostStates": [
      {
        "@odata.type": "microsoft.graph.hostSecurityState"
      }
    ],
    "incidentIds": [
      "String"
    ],
    "investigationSecurityStates": [
      {
        "@odata.type": "microsoft.graph.investigationSecurityState"
      }
    ],
    "lastEventDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "malwareStates": [
      {
        "@odata.type": "microsoft.graph.malwareState"
      }
    ],
    "messageSecurityStates": [
      {
        "@odata.type": "microsoft.graph.messageSecurityState"
      }
    ],
    "networkConnections": [
      {
        "@odata.type": "microsoft.graph.networkConnection"
      }
    ],
    "processes": [
      {
        "@odata.type": "microsoft.graph.process"
      }
    ],
    "recommendedActions": [
      "String"
    ],
    "registryKeyStates": [
      {
        "@odata.type": "microsoft.graph.registryKeyState"
      }
    ],
    "securityResources": [
      {
        "@odata.type": "microsoft.graph.securityResource"
      }
    ],
    "severity": "String",
    "sourceMaterials": [
      "String"
    ],
    "status": "String",
    "tags": [
      "String"
    ],
    "title": "String",
    "triggers": [
      {
        "@odata.type": "microsoft.graph.alertTrigger"
      }
    ],
    "uriClickSecurityStates": [
      {
        "@odata.type": "microsoft.graph.uriClickSecurityState"
      }
    ],
    "userStates": [
      {
        "@odata.type": "microsoft.graph.userSecurityState"
      }
    ],
    "vendorInformation": {
      "@odata.type": "microsoft.graph.securityVendorInformation"
    },
    "vulnerabilityStates": [
      {
        "@odata.type": "microsoft.graph.vulnerabilityState"
      }
    ]
  }
}
```

