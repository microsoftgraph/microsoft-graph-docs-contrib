---
title: "List all (AWS identities)"
description: "Get a list of the awsIdentity objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List all (AWS identities)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsIdentity](../resources/awsidentity.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsassociatedidentities_list_all" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsassociatedidentities-list-all-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [awsIdentity](../resources/awsidentity.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/all
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsidentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsIdentity)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.awsRole",
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjpyb2xlL3NlcnZpY2Vyb2xlMQ",
      "externalId": "arn:aws:iam::123456789012:role/servicerole1",
      "displayName": "servicerole1",
      "roleType": "system",
      "trustEntityType": "service",
      "source": {
        "@odata.type": "#microsoft.graph.awsSource",
        "accountId": "123456789012",
        "identityProviderType": "aws"
      }
    },
    {
      "@odata.type": "#microsoft.graph.awsUser",
      "id": "YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjp1c2VyL2JvYg",
      "externalId": "arn:aws:iam::123456789012:user/bob",
      "displayName": "bob smith",
      "source": {
        "@odata.type": "#microsoft.graph.awsSource",
        "accountId": "123456789012",
        "identityProviderType": "aws"
      }
    }
  ]
}
```

