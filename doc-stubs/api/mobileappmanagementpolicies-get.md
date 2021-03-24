---
title: "Get mobileAppManagementPolicy"
description: "Read the properties and relationships of a mobile app management policy."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "mobility-management"
doc_type: apiPageType
---

## Get mobileAppManagementPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.all, Policy.ReadWrite.all|


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /policies/mobileAppManagementPolicies/{id}
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
GET https://graph.microsoft.com/beta/policies/mobileAppManagementPolicies/{id}
```

### Response

**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.AAD.MobilityService.mobilityManagementPolicy",
    "id": "b2c4bc08-bc08-b2c4-08bc-c4b208bcc4b2",
    "appliesTo": "String",
    "complianceUrl": "String",
    "description": "String",
    "discoveryUrl": "String",
    "displayName": "String",
    "termsOfUseUrl": "String"
  }
}
```
