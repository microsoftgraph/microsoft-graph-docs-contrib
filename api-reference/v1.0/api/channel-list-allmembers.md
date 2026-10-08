---
title: "List allMembers"
description: "Get a list of all members in a channel."
author: "sumanac"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 01/29/2025
---

# List allMembers

Namespace: microsoft.graph

Get a list of all [members](../resources/conversationmember.md) in a [channel](../resources/channel.md). This API supports all channel types, including shared channels. For shared channels, the response includes:

- **Direct members**: Users who are added directly to the channel, including users from other tenants (cross-tenant).
- **Indirect members**: Users who are members of a team with which the channel is shared, including teams in the same tenant or in a different tenant (cross-tenant). The **@microsoft.graph.originalSourceMembershipUrl** property identifies the original source team and indicates that the user is an indirect member of the shared channel.

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. Users shouldn't try to parse or make any assumptions about these resource IDs.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_list_allmembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-list-allmembers-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels/{channel-id}/allMembers
```

### Optional query parameters

This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conversationMember](../resources/conversationmember.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channel-list-allMembers",
  "sampleKeys": ["2ab9c796-2902-45f8-b712-7c5a63cf41c4", "19%3A20bc1df46b1148e9b22539b83bc66809%40thread.skype"]
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19%3A20bc1df46b1148e9b22539b83bc66809%40thread.skype/allMembers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/channel-list-allmembers-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/channel-list-allmembers-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/channel-list-allmembers-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/channel-list-allmembers-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/channel-list-allmembers-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/channel-list-allmembers-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/channel-list-allmembers-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.conversationMember)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('2ab9c796-2902-45f8-b712-7c5a63cf41c4')/channels('19%3A20bc1df46b1148e9b22539b83bc66809%40thread.skype')/allMembers",
  "@odata.count": 2,
  "value": [
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "@microsoft.graph.originalSourceMembershipUrl": "https://graph.microsoft.com/v1.0/tenants/2432b57b-0abd-43db-aa7b-16eadd115d34/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/channels/19%3AlRZHL5VwvZs0XN2orTn7DlinJDETkgSVTHXbDLUEKf01%40thread.tacv2/members/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpsUlpITDVWd3ZaczBYTjJvclRuN0RsaW5KREVUa2dTVlRIWGJETFVFS2YwMUB0aHJlYWQudGFjdjIjIzI4YzEwMjQ0LTRiYWQtNGZkYS05OTNjLWYzMzJmYWVmOTRmMA==",
      "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNlZWY5Y2IzNi0wNmRlLTQ2OWItODdjZC03MGY0Y2JlMzJkMTQ=",
      "roles": [
        "Owner"
      ],
      "displayName": "Caleb Foster",
      "userId": "eef9cb36-06de-469b-87cd-70f4cbe32d14",
      "email": "calfos@contoso.com",
      "tenantId": "ar8133445-c7e2-418a-8803-0e68d4b88607"
    },
    {
      "@odata.type": "#microsoft.graph.aadUserConversationMember",
      "@microsoft.graph.originalSourceMembershipUrl": "https://graph.microsoft.com/v1.0/tenants/2432b57b-0abd-43db-aa7b-16eadd115d34/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/members/MCMjMSMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxZTc2OWVhYi0wNmE4LTRiMmUtYWM0Mi0xZjA0MGE0ZTUyYTEjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
      "id": "MmFiOWM3OTYtMjkwMi00NWY4LWI3MTItN2M1YTYzY2Y0MWM0IyNiMzI0NmY0NC1jMDkxLTQ2MjctOTZjNi0yNWIxOGZhMmM5MTA=",
      "roles": [ ],
      "displayName": "Eric Solomon",
      "userId": "b3246f44-c091-4627-96c6-25b18fa2c910",
      "email": "ericsol@contoso.com",
      "tenantId": "df81db53-c7e2-418a-8803-0e68d4b88607"
    }
  ]
}
```

## Related content

[List the members of a team](team-list-members.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "channel member list",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
