---
title: "Create userConsentRequest"
description: "Create a new userConsentRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create userConsentRequest
Namespace: microsoft.graph

Create a new [userConsentRequest](../resources/userconsentrequest.md) object.

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
POST /appConsentRequest/userConsentRequests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [userConsentRequest](../resources/userconsentrequest.md) object.

The following table shows the properties that are required when you create the [userConsentRequest](../resources/userconsentrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [request](../resources/request.md)|
|reason|String|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [userConsentRequest](../resources/userconsentrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_userconsentrequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/appConsentRequest/userConsentRequests
Content-Type: application/json
Content-length: 180

{
  "@odata.type": "#microsoft.graph.userConsentRequest",
  "reason": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "status": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userConsentRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.userConsentRequest",
  "id": "6e9eb21d-b21d-6e9e-1db2-9e6e1db29e6e",
  "reason": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)"
}
```

