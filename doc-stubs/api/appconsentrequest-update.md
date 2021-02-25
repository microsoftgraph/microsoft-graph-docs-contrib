---
title: "Update appConsentRequest"
description: "Update the properties of an appConsentRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update appConsentRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [appConsentRequest](../resources/appconsentrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
PATCH /appConsentRequest
PATCH /user/appConsentRequestsForApproval/{appConsentRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [appConsentRequest](../resources/appconsentrequest.md) object.

The following table shows the properties that are required when you update the [appConsentRequest](../resources/appconsentrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|appDisplayName|String|**TODO: Add Description**|
|consentType|String|**TODO: Add Description**|
|pendingScopes|[appConsentRequestScope](../resources/appconsentrequestscope.md) collection|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [appConsentRequest](../resources/appconsentrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_appconsentrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/appConsentRequest
Content-Type: application/json
Content-length: 245

{
  "@odata.type": "#microsoft.graph.appConsentRequest",
  "appId": "String",
  "appDisplayName": "String",
  "consentType": "String",
  "pendingScopes": [
    {
      "@odata.type": "microsoft.graph.appConsentRequestScope"
    }
  ]
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.appConsentRequest",
  "id": "f7a9ccf6-ccf6-f7a9-f6cc-a9f7f6cca9f7",
  "appId": "String",
  "appDisplayName": "String",
  "consentType": "String",
  "pendingScopes": [
    {
      "@odata.type": "microsoft.graph.appConsentRequestScope"
    }
  ]
}
```

