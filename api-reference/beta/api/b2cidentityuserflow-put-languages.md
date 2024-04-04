---
title: "Create or update language"
description: "Create a custom language in an Azure AD B2C user flow."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Create or update language

Namespace: microsoft.graph

This method is used to create or update a custom language in an Azure AD B2C user flow.

**Note:** You must enable language customization in the Azure AD B2C user flow before you can create a custom language. For more information, see [Update b2cIdentityUserFlow](../api/b2cidentityuserflow-update.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "b2cidentityuserflow_put_languages" } -->
[!INCLUDE [permissions-table](../includes/permissions/b2cidentityuserflow-put-languages-permissions.md)]

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PUT /identity/b2cUserFlows/{id}/languages/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object.

The following table shows the properties that can be optionally provided when you create the [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the language. This field is Language ID tag [RFC 5646](https://tools.ietf.org/html/rfc5646) compliant and must be a documented Language ID. If provided in the request body, it must match the identifer provided in the request URL.|
|isEnabled|Boolean|Indicates whether the language is enabled within the user flow. If you don't specify a value for this property in the request, isEnabled will be set to 'true'.|

## Response

If successful, this method returns a `201 Created` response code and a [userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) object in the response body.

## Examples

### Example 1: Create a custom language in an Azure AD B2C user flow

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_userflowlanguageconfiguration_from__1",
  "sampleKeys": ["B2C_1_CustomerSignUp", "es-ES"]
}
-->

``` http
PUT https://graph.microsoft.com/beta/identity/b2cUserFlows/B2C_1_CustomerSignUp/languages/es-ES
Content-Type: application/json

{
  "id": "es-ES",
  "isEnabled": true
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-userflowlanguageconfiguration-from--1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userFlowLanguageConfiguration"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/b2cUserFlows('B2C_1_CustomerSignUp')/languages/$entity",
  "id": "es-ES",
  "isEnabled": true,
  "displayName": "Spanish (Spain)"
}
```

### Example 2: Update a custom language in an Azure AD B2C user flow

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_userflowlanguageconfiguration_from__2",
  "sampleKeys": ["B2C_1_CustomerSignUp", "es-ES"]
}
-->

``` http
PUT https://graph.microsoft.com/beta/identity/b2cUserFlows/B2C_1_CustomerSignUp/languages/es-ES
Content-Type: application/json

{
  "isEnabled": false
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-userflowlanguageconfiguration-from--2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
