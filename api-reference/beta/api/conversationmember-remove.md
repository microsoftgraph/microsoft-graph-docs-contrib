---
title: "conversationMember: remove"
description: "Remove members in bulk from a team."
author: "prachigoyal-ms"
doc_type: "apiPageType"
ms.localizationpriority: high
ms.subservice: "teams"
---

# conversationMember: remove

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove multiple members from a [team](../resources/team.md) in a single request. The response provides details about which memberships could and couldn't be removed.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conversationmember_remove" } -->
[!INCLUDE [permissions-table](../includes/permissions/conversationmember-remove-permissions.md)]


## HTTP request

This is a bound action to remove multiple elements from a [conversationMember](../resources/conversationmember.md) collection in a single request.
<!-- { "blockType": "ignored" } -->

```http
POST /teams/{team-id}/members/remove
```

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the JSON representation of the list of **conversationMember** derivatives to be removed from a team. A maximum of 20 **conversationMember** derivatives can be removed in a single request.

The following table shows the parameter that you can use with this method.

|Parameter|Type|Description|
|:---|:---|:---|
|values|[conversationMember](../resources/conversationmember.md) collection|A list of conversation members that should be removed.|

## Response

If successful, this method returns either a `204 No Content` response if all specified members were successfully removed from the team or a `207 Multi-Status` response if only some members were removed. The caller should inspect the response payload to identify which member removals failed. The response body contains a collection of derivatives of the [actionResultPart](../resources/actionresultpart.md) resource. If the request fails, the API returns an error. For more information about Microsoft Graph errors, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Example 1: Remove members in bulk from a team

The following example shows how to remove multiple members from a **team** in a single request.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "bulkremovemembers_team"
}-->

```http
POST https://graph.microsoft.com/beta/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/remove
Content-Type: application/json

{
    "values": [
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('18a80140-b0fb-4489-b360-2f6efaf225a0')"
        },
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
        }
    ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Remove members in bulk from a team using user principal name

The following example shows how to remove multiple members from a **team** in a single request using their user principal names.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "bulkdeletemembers_team_upn"
}-->

```http
POST https://graph.microsoft.com/beta/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/remove
Content-Type: application/json

{
    "values": [
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('jacob@contoso.com')"
        },
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('alex@contoso.com')"
        }
    ]
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false
} -->

```http
HTTP/1.1 204 No Content
```

### Example 3: Remove members in bulk from a team with failed removals

The following example shows how to remove multiple members from a **team** when the removal of a member fails.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "bulkdeletemembers_team_partial"
}-->

```http
POST https://graph.microsoft.com/beta/teams/e4183b04-c9a2-417c-bde4-70e3ee46a6dc/members/remove
Content-Type: application/json

{
    "values": [
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('c04f28bf-ab68-40a2-974b-e6af31fa78fb')"
        },
        {
            "@odata.type": "microsoft.graph.aadUserConversationMember",
            "user@odata.bind": "https://graph.microsoft.com/beta/users('86503198-b81b-43fe-81ee-ad45b8848ac9')"
        }
    ]
}
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.actionResultPart)"
} -->

```http
HTTP/1.1 207 Multi-Status
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.aadUserConversationMemberResult)",
    "value": [
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "c04f28bf-ab68-40a2-974b-e6af31fa78fb",
            "error": {
                "code": "NotFound",
                "message": "Could not find resource"
            }
        },
        {
            "@odata.type": "#microsoft.graph.aadUserConversationMemberResult",
            "userId": "86503198-b81b-43fe-81ee-ad45b8848ac9",
            "error": null
        }
    ]
}
```

## Related content

[Remove member from team](team-delete-members.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-09-12 06:02:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove members from a team in bulk.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

