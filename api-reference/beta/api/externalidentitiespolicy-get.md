---
title: "Get externalIdentitiesPolicy"
description: "Read the properties and relationships of an externalIdentitiesPolicy object."
author: "KuiGithui"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get externalIdentitiesPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ExternalIdentities|
|Delegated (personal Microsoft account)|Policy.ReadWrite.ExternalIdentities|
|Application|Policy.ReadWrite.ExternalIdentities|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/externalIdentitiesPolicy
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

If successful, this method returns a `200 OK` response code and an [externalIdentitiesPolicy](../resources/externalidentitiespolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_externalidentitiespolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/externalidentitiespolicy
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalIdentitiesPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/externalIdentitiesPolicy/$entity",
    "id": "externalIdentityPolicy",
    "deletedDateTime": null,
    "allowExternalIdentitiesToLeave": true,
    "allowDeletedIdentitiesDataRemoval": false,
    "displayName": "External Identities Policy"
  }
}
```

