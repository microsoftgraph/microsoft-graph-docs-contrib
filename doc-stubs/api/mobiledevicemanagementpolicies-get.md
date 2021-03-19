---
title: "Get mobileDeviceManagementPolicies"
description: "Read the properties and relationships of a mobilityManagementPolicy object."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "mobility-management"
doc_type: apiPageType
---

## Get mobileDeviceManagementPolicies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.all, Policy.ReadWrite.all|

## HTTP request

``` http
GET /policies/mobileDeviceManagementPolicies/{id}
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

If successful, this method returns a `200 OK` response code and a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object in the response body.

## Examples

### Request

``` http
GET https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/{id}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.MobilityService.mobilityManagementPolicy"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
    "id": "String (identifier)",
    "appliesTo": "String",
    "complianceUrl": "String",
    "description": "String",
    "discoveryUrl": "String",
    "displayName": "String",
    "termsOfUseUrl": "String"
  }
}
```
