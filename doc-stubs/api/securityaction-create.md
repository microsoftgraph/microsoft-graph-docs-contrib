---
title: "Create securityAction"
description: "Create a new securityAction object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create securityAction
Namespace: microsoft.graph

Create a new [securityAction](../resources/securityaction.md) object.

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
POST /security/securityActions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [securityAction](../resources/securityaction.md) object.

The following table shows the properties that are required when you create the [securityAction](../resources/securityaction.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|actionReason|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|azureTenantId|String|**TODO: Add Description**|
|clientContext|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|errorInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|parameters|[keyValuePair](../resources/synchronization-keyvaluepair.md) collection|**TODO: Add Description**|
|states|[securityActionState](../resources/securityactionstate.md) collection|**TODO: Add Description**|
|status|operationStatus|**TODO: Add Description**. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|user|String|**TODO: Add Description**|
|vendorInformation|[securityVendorInformation](../resources/securityvendorinformation.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [securityAction](../resources/securityaction.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_securityaction_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/securityActions
Content-Type: application/json
Content-length: 681

{
  "@odata.type": "#microsoft.graph.securityAction",
  "actionReason": "String",
  "appId": "String",
  "azureTenantId": "String",
  "clientContext": "String",
  "completedDateTime": "String (timestamp)",
  "errorInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "lastActionDateTime": "String (timestamp)",
  "name": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "states": [
    {
      "@odata.type": "microsoft.graph.securityActionState"
    }
  ],
  "status": "String",
  "user": "String",
  "vendorInformation": {
    "@odata.type": "microsoft.graph.securityVendorInformation"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.securityAction"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.securityAction",
  "id": "c9613460-3460-c961-6034-61c9603461c9",
  "actionReason": "String",
  "appId": "String",
  "azureTenantId": "String",
  "clientContext": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "errorInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "lastActionDateTime": "String (timestamp)",
  "name": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "states": [
    {
      "@odata.type": "microsoft.graph.securityActionState"
    }
  ],
  "status": "String",
  "user": "String",
  "vendorInformation": {
    "@odata.type": "microsoft.graph.securityVendorInformation"
  }
}
```

