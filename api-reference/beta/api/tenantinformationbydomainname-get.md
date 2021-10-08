---
title: "Get tenantInformationByTenantId"
description: "Given a domain name, search for a tenant and read its tenantInformation."
author: "adimitui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get tenantInformationByTenantId
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Given a domain name, search for a tenant and read its [tenantInformation](../resources/tenantInformation.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All|
|Delegated (personal Microsoft account)|Policy.Read.All|
|Application|Policy.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/findTenantInformationByDomainName(domainName='{id}')
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

If successful, this method returns a `200 OK` response code and a [tenantInformation](../resources/tenantinformation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_tenantrelationshiproot"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/findTenantInformationByDomainName(domainName='contoso.com')
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.tenantRelationshipRoot"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.tenantRelationshipRoot",
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#graph.tenantInformation",
    "tenantId": "String (identifier)",
    "federationBrandName": "The Contoso Company",
    "displayName": "Contoso Production Tenant",
    "defaultDomainName": "contoso.com"
  }
}
```

