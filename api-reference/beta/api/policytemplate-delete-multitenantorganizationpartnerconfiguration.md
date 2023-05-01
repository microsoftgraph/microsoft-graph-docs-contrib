---
title: "Delete multiTenantOrganizationPartnerConfigurationTemplate"
description: "Delete a multiTenantOrganizationPartnerConfigurationTemplate object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete multiTenantOrganizationPartnerConfigurationTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.

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
DELETE /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_multitenantorganizationpartnerconfigurationtemplate"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

