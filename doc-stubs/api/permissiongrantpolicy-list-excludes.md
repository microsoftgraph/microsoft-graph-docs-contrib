---
title: "List excludes"
description: "Get the permissionGrantConditionSet resources from the excludes navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List excludes
Namespace: microsoft.graph

Get the permissionGrantConditionSet resources from the excludes navigation property.

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
GET /policies/permissionGrantPolicies/{permissionGrantPolicyId}/includes
GET /policies/permissionGrantPolicies/{permissionGrantPolicyId}/excludes
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

If successful, this method returns a `200 OK` response code and a collection of [permissionGrantConditionSet](../resources/permissiongrantconditionset.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_permissiongrantconditionset"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/permissionGrantPolicies/{permissionGrantPolicyId}/includes
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permissionGrantConditionSet)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.permissionGrantConditionSet",
      "id": "0ecf5c5d-5c5d-0ecf-5d5c-cf0e5d5ccf0e",
      "permissionClassification": "String",
      "permissionType": "String",
      "resourceApplication": "String",
      "permissions": [
        "String"
      ],
      "clientApplicationIds": [
        "String"
      ],
      "clientApplicationTenantIds": [
        "String"
      ],
      "clientApplicationPublisherIds": [
        "String"
      ],
      "clientApplicationsFromVerifiedPublisherOnly": "Boolean"
    }
  ]
}
```

