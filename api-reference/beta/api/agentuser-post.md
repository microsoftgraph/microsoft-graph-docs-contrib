---
title: "Create agentUser"
description: "Create a new agentUser."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
ms.date: 11/11/2025
---

# Create agentUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentUser](../resources/agentuser.md) object. You can also create an agent user by using the [POST /users](../api/user-post-users.md) endpoint and specifying the `microsoft.graph.agentUser` type in the request body.

At a minimum, you must specify the required properties. You can optionally specify any other writable properties.

This operation returns by default only a subset of the properties for each **agentUser**. These default properties are noted in the [Properties](../resources/agentuser.md#properties) section. To get properties that are not returned by default, do a [GET operation](agentuser-get.md) and specify the properties in a `$select` OData query option.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permission | Higher privileged permissions |
|:--------------------|:---------------------------|:-----------------------------|
|Delegated (work or school account) | AgentIdUser.ReadWrite.IdentityParentedBy | AgentIdUser.ReadWrite.All, User.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. | Not supported.|
|Application | AgentIdUser.ReadWrite.IdentityParentedBy | AgentIdUser.ReadWrite.All, User.ReadWrite.All |

[!INCLUDE [rbac-agent-user-apis-write](../includes/rbac-for-apis/rbac-agent-user-apis-write.md)]


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/microsoft.graph.agentUser
```

> [!TIP]
> You can also create agent users through the [POST /users](../api/user-post-users.md) without specifying the `microsoft.graph.agentUser` type. However, `"@odata.type": "microsoft.graph.agentUser"` must be specified in the request body together with other required properties for user creation.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json  |

## Request body

In the request body, supply a JSON representation of [agentUser](../resources/agentuser.md) object.

The following table lists the properties that are *required* when you create an **agentUser**.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
|accountEnabled |Boolean |`true` if the account is enabled; otherwise, `false`.|
|displayName |String |The name to display in the address book for the agent user.|
|mailNickname |String |The mail alias for the agent user.|
|userPrincipalName |String |The user principal name (someagent@contoso.com). It's an Internet-style login name for the agent user based on the Internet standard RFC 822. By convention, this should map to the agent user's email name. The general format is alias@domain, where domain must be present in the tenant's collection of verified domains. The verified domains for the tenant can be accessed from the **verifiedDomains** property of [organization](../resources/organization.md). <br>NOTE: This property cannot contain accent characters. Only the following characters are allowed `A - Z`, `a - z`, `0 - 9`, ` ' . - _ ! # ^ ~`. For the complete list of allowed characters, see [username policies](/azure/active-directory/authentication/concept-sspr-policy#userprincipalname-policies-that-apply-to-all-user-accounts).|
| identityParentId | String | The object ID of the associated [agent identity](../resources/agentidentity.md). Required.|

Because this resource supports [extensions](/graph/extensibility-overview), you can use the `POST` operation and add custom properties with your own data to the agent user instance while creating it.

## Response

If successful, this method returns a `201 Created` response code and an [agentUser](../resources/agentuser.md) object in the response body.

Attempting to create an agentUser with an **identityParentId** already linked to another agentUser returns a `400 Bad Request` error.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_agentuser_agentuser"
}-->

```http
POST https://graph.microsoft.com/beta/users/microsoft.graph.agentUser
Content-type: application/json

{
  "accountEnabled": true,
  "displayName": "Sales Agent",
  "mailNickname": "SalesAgent",
  "userPrincipalName": "salesagent@contoso.com",
  "identityParentId": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-agentuser-agentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agentUser"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users/$entity",
    "@odata.type": "#microsoft.graph.agentUser",
    "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
    "businessPhones": [],
    "displayName": "Sales Agent",
    "mail": "salesagent@contoso.com",
    "mailNickname": "SalesAgent",
    "userPrincipalName": "salesagent@contoso.com",
    "identityParentId": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create agentUser",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
