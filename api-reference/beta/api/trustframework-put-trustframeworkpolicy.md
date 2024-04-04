---
title: "Update trustFrameworkPolicy"
description: "This operation updates an existing trustFrameworkPolicy object, or if one doesn't exist, it creates one. "
ms.localizationpriority: medium
author: "Nickgmicrosoft"
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---
# Update or create trustFrameworkPolicy

Namespace: microsoft.graph

>**Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update an existing [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) or create one if it does not exist.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "trustframework_put_trustframeworkpolicy" } -->
[!INCLUDE [permissions-table](../includes/permissions/trustframework-put-trustframeworkpolicy-permissions.md)]

The work or school account must be a global administrator of the tenant.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /trustFramework/policies/{id}/$value
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/xml. Required.|

## Request body

In the request body, provide an XML representation of the [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) object.

>**Note:** the content type must be `application/xml`.

## Response

The response will be one of the following:
- If a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) exists, a successful request returns a `200 OK` response code.
- If a [trustFrameworkPolicy](../resources/trustframeworkpolicy.md) does not exist, a successful request returns a `201 Created` response code.
- If unsuccessful, a `4xx` error will be returned with specific details.

## Example

The following example updates a **trustFrameworkPolicy**.

##### Request

<!-- {
  "blockType": "ignored",
  "name": "update_trustframeworkpolicy",
  "sampleKeys": ["B2C_1A_SocialAndLocalAccounts_Base"]
}-->
```http
PUT https://graph.microsoft.com/beta/trustFramework/policies/B2C_1A_SocialAndLocalAccounts_Base/$value
Content-Type: application/xml

<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="contoso.com" PolicyId="B2C_1A_SocialAndLocalAccounts_Base">
    <!---PolicyContent-->
</TrustFrameworkPolicy>
```

##### Response

<!-- {
  "blockType": "ignored",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/xml

<TrustFrameworkPolicy xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/online/cpim/schemas/2013/06" PolicySchemaVersion="0.3.0.0" TenantId="contoso.com" PolicyId="B2C_1A_Test" PublicPolicyUri="http://contoso.com/B2C_1A_Test">
	.....
	....
	<!---PolicyContent-->
	....
	....
</TrustFrameworkPolicy>
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update trustframeworkpolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


