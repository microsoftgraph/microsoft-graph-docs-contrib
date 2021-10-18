---
title: "Update credentialUserRegistrationCount"
description: "Update the properties of a credentialUserRegistrationCount object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update credentialUserRegistrationCount
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object.

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
PATCH /credentialUserRegistrationCount
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|**TODO: Add Description** Required.|
|userRegistrationCounts|[Microsoft.AAD.Reporting.userRegistrationCount](../resources/userregistrationcount.md) collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [credentialUserRegistrationCount](../resources/credentialuserregistrationcount.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_credentialuserregistrationcount"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/credentialUserRegistrationCount
Content-Type: application/json
Content-length: 218

{
  "@odata.type": "#microsoft.graph.credentialUserRegistrationCount",
  "totalUserCount": "Integer",
  "userRegistrationCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationCount"
    }
  ]
}
```


### Response
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
  "@odata.type": "#microsoft.graph.credentialUserRegistrationCount",
  "id": "f830ecfe-ecfe-f830-feec-30f8feec30f8",
  "totalUserCount": "Integer",
  "userRegistrationCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationCount"
    }
  ]
}
```

