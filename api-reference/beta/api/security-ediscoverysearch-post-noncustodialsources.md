---
title: "Add noncustodialDataSources"
description: "Create a new non-custodial source associated with an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---


# Add noncustodialDataSources
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new non-custodial source associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_post_noncustodialsources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-post-noncustodialsources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/noncustodialSources/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.

You can specify the following properties when you create an **ediscoveryNoncustodialDataSource**.

|Property|Type|Description|
|:---|:---|:---|
|@odata.id|String|String that defines the non-custodial object. See the example that follows.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_ediscoverynoncustodialdatasource_No_content"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/searches/c61a5860-d634-4d14-aea7-d82b6f4eb7af/noncustodialSources/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialDataSources/39333641443238353535383731453339"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-ediscoverynoncustodialdatasource-no-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
