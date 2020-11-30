---
title: "Create alert"
description: "Create a new alert object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create alert
Namespace: microsoft.graph

Create a new [alert](../resources/alert.md) object.

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
POST /security/alerts
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [alert](../resources/alert.md) object.

The following table shows the properties that are required when you create the [alert](../resources/alert.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|activityGroupName|String|**TODO: Add Description**|
|alertDetections|[alertDetection](../resources/alertdetection.md) collection|**TODO: Add Description**|
|assignedTo|String|**TODO: Add Description**|
|azureSubscriptionId|String|**TODO: Add Description**|
|azureTenantId|String|**TODO: Add Description**|
|category|String|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|cloudAppStates|[cloudAppSecurityState](../resources/cloudappsecuritystate.md) collection|**TODO: Add Description**|
|comments|String collection|**TODO: Add Description**|
|confidence|Int32|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|detectionIds|String collection|**TODO: Add Description**|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|feedback|alertFeedback|**TODO: Add Description**. Possible values are: `unknown`, `truePositive`, `falsePositive`, `benignPositive`, `unknownFutureValue`.|
|fileStates|[fileSecurityState](../resources/filesecuritystate.md) collection|**TODO: Add Description**|
|historyStates|[alertHistoryState](../resources/alerthistorystate.md) collection|**TODO: Add Description**|
|hostStates|[hostSecurityState](../resources/hostsecuritystate.md) collection|**TODO: Add Description**|
|incidentIds|String collection|**TODO: Add Description**|
|investigationSecurityStates|[investigationSecurityState](../resources/investigationsecuritystate.md) collection|**TODO: Add Description**|
|lastEventDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|malwareStates|[malwareState](../resources/malwarestate.md) collection|**TODO: Add Description**|
|messageSecurityStates|[messageSecurityState](../resources/messagesecuritystate.md) collection|**TODO: Add Description**|
|networkConnections|[networkConnection](../resources/networkconnection.md) collection|**TODO: Add Description**|
|processes|[process](../resources/process.md) collection|**TODO: Add Description**|
|recommendedActions|String collection|**TODO: Add Description**|
|registryKeyStates|[registryKeyState](../resources/registrykeystate.md) collection|**TODO: Add Description**|
|securityResources|[securityResource](../resources/securityresource.md) collection|**TODO: Add Description**|
|severity|alertSeverity|**TODO: Add Description**. Possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|sourceMaterials|String collection|**TODO: Add Description**|
|status|alertStatus|**TODO: Add Description**. Possible values are: `unknown`, `newAlert`, `inProgress`, `resolved`, `dismissed`, `unknownFutureValue`.|
|tags|String collection|**TODO: Add Description**|
|title|String|**TODO: Add Description**|
|triggers|[alertTrigger](../resources/alerttrigger.md) collection|**TODO: Add Description**|
|uriClickSecurityStates|[uriClickSecurityState](../resources/uriclicksecuritystate.md) collection|**TODO: Add Description**|
|userStates|[userSecurityState](../resources/usersecuritystate.md) collection|**TODO: Add Description**|
|vendorInformation|[securityVendorInformation](../resources/securityvendorinformation.md)|**TODO: Add Description**|
|vulnerabilityStates|[vulnerabilityState](../resources/vulnerabilitystate.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [alert](../resources/alert.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_alert_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/alerts
Content-Type: application/json
Content-length: 2450

{
  "@odata.type": "#microsoft.graph.alert",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

