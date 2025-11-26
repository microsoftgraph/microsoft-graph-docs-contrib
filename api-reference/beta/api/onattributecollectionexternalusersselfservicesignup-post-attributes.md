---
title: "Add attribute (to user flow)"
description: "Add attribute to an externalUsersSelfServiceSignupEventsFlow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 08/16/2024
---

# Add attribute (to user flow)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an attribute to an external identities self-service sign up user flow that's represented by an [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. You can add both custom and built-in attributes to a user flow.

The attribute is added to both the **attributeCollection**> **attributes** and **attributeCollection**> **attributeCollectionPage** > **views** collections on the user flow. In the **views** collection, the attribute is assigned the default settings. You can [PATCH the user flow](../api/authenticationeventsflow-update.md) to customize the settings of the attribute on the **views** object, for example, marking it as required or updating the allowed input types.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onattributecollectionexternalusersselfservicesignup_post_attributes" } -->
[!INCLUDE [permissions-table](../includes/permissions/onattributecollectionexternalusersselfservicesignup-post-attributes-permissions.md)]

[!INCLUDE [rbac-user-flows-convergence-apis-write](../includes/rbac-for-apis/rbac-user-flows-convergence-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identity/authenticationEventsFlows/{authenticationEventsFlow-id}/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply an **odata.id** property with the ID of the [identityUserFlowAttribute](../resources/identityuserflowattribute.md) object to add to the user flow.

## Response
If successful, this method returns a `204 No Content` response code.  If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

#### Request

The following example shows a request that adds city as an attribute for attribute collection step of an external identities self-service sign-up user flow. If the request is successful, the attribute is added to both the **attributeCollection**> **attributes** and **attributeCollection**> **attributeCollectionPage** > **views** collections on the user flow. After adding the attribute to the user flow, you can [PATCH the user flow](../api/authenticationeventsflow-update.md) to customize the settings of the attribute on the **views** object, that is, customize the page layout.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onAttributeCollectionExternalUsersSelfServiceSignUp_post_attributes"
}
-->

```http
POST https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/$ref

{
    "@odata.id":"https://graph.microsoft.com/beta/identity/userFlowAttributes/city"
} 

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/onattributecollectionexternalusersselfservicesignup-post-attributes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/onattributecollectionexternalusersselfservicesignup-post-attributes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onattributecollectionexternalusersselfservicesignup-post-attributes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onattributecollectionexternalusersselfservicesignup-post-attributes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onattributecollectionexternalusersselfservicesignup-post-attributes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onattributecollectionexternalusersselfservicesignup-post-attributes-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onattributecollectionexternalusersselfservicesignup-post-attributes-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
