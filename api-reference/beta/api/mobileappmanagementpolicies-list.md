---
title: "List mobileAppManagementPolicies"
description: "Get a list of the mobile app management policy objects and their properties."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# List mobileAppManagementPolicies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.All|

## HTTP request

``` http
GET /policies/mobileAppManagementPolicies
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response.For example - 

- To select specific attributes add `$select=id,displayname`
- To retrieve included groups for each policy, add `$expand=includedGroups`
- To filter based on an attribute, use
`$filter=displayName eq 'Microsoft Intune'`

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_mobilitymanagementpolicy"
}
-->

``` http
GET https://graph.microsoft.com/beta/policies/mobileAppManagementPolicies
```


### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mobilityManagementPolicy)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
      "id": "String (identifier)",
      "appliesTo": "String",
      "complianceUrl": "String",
      "description": "String",
      "discoveryUrl": "String",
      "displayName": "String",
      "termsOfUseUrl": "String"
    }
  ]
}
```
