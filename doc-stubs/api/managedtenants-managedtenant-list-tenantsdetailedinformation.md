---
title: "List tenantsDetailedInformation"
description: "Get the tenantDetailedInformation resources from the tenantsDetailedInformation navigation property."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List tenantsDetailedInformation
Namespace: microsoft.graph.managedTenants



Get the tenantDetailedInformation resources from the tenantsDetailedInformation navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/tenantsDetailedInformation
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

If successful, this method returns a `200 OK` response code and a collection of [tenantDetailedInformation](../resources/tenantdetailedinformation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_tenantdetailedinformation"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantsDetailedInformation
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.tenantDetailedInformation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.managedTenants.tenantDetailedInformation",
      "id": "d12e4bf5-4bf5-d12e-f54b-2ed1f54b2ed1",
      "tenantId": "String",
      "displayName": "String",
      "defaultDomainName": "String",
      "countryName": "String",
      "countryCode": "String",
      "city": "String",
      "region": "String",
      "verticalName": "String",
      "industryName": "String",
      "segmentName": "String"
    }
  ]
}
```

