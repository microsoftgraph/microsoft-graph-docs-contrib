---
title: "Create granularAdminCustomer"
description: "Create a new granularAdminCustomer object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create granularAdminCustomer
Namespace: microsoft.graph



Create a new [granularAdminCustomer](../resources/granularadmincustomer.md) object.

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
POST /tenantRelationship/granularAdminCustomers
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [granularAdminCustomer](../resources/granularadmincustomer.md) object.

You can specify the following properties when creating a **granularAdminCustomer**.

|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [granularAdminCustomer](../resources/granularadmincustomer.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_granularadmincustomer_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminCustomers
Content-Type: application/json
Content-length: 148

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminCustomer",
  "tenantId": "String",
  "displayName": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminCustomer"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminCustomer",
  "id": "f2b7c6b0-3fa6-545e-92c3-adcc75ecbaf2",
  "tenantId": "String",
  "displayName": "String"
}
```

