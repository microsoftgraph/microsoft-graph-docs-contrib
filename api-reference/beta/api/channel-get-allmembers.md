---
title: "Get member from allMembers"
description: "Retrieve a single conversationMember (direct or indirect) from the allMembers collection using the membership ID."
author: "jsinghmokha"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 11/19/2025
---

# Get member from allMembers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a single [conversationMember](../resources/conversationmember.md) (direct or indirect) from the allMembers collection using the membership ID.

This API provides access to the following member types:
- *Direct members*: Users who are added directly to the channel, including users from other tenants (cross-tenant).
- *Indirect members*: Users who are members of a team with which the channel is shared, including teams in the same tenant or in a different tenant (cross-tenant). When you retrieve an indirect member, the **@microsoft.graph.originalSourceMembershipUrl** property identifies the original source team, which indicates that the user is an indirect member of the shared channel.

> [!NOTE]
> The membership IDs returned by the server must be treated as opaque strings. Users shouldn't try to parse or make any assumptions about these resource IDs.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_get_allmembers" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-get-allmembers-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /teams/{team-id}/channels/{channel-id}/allMembers/{membership-id}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Examples

### Example 1: Get a direct member of a channel

The following example shows how to get a direct member of a channel.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "channel-allmembers-get-member-direct",
  "sampleKeys": ["2ab9c796-2902-45f8-b712-7c5a63cf41c4", "19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2", "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg=="]
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/allMembers/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==
```

#### Response

The following example shows the response for a direct member.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('2ab9c796-2902-45f8-b712-7c5a63cf41c4')/channels('19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2')/allMembers/$entity",
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "@microsoft.graph.originalSourceMembershipUrl": "https://graph.microsoft.com/beta/tenants/2432b57b-0abd-43db-aa7b-16eadd115d34/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/members/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
  "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
  "roles": [
    "owner"
  ],
  "displayName": "Caleb Foster",
  "userId": "eef9cb36-06de-469b-87cd-70f4cbe32d14",
  "email": "calfos@contoso.com",
  "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34"
}
```

### Example 2: Get an indirect member of a shared channel

The following example shows how to get an indirect member of a shared channel.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "channel-allmembers-get-member-indirect",
  "sampleKeys": ["2ab9c796-2902-45f8-b712-7c5a63cf41c4", "19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2", "MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMzYzgxODVhNy04ZDA5LTRkODQtYTY0MS1lYjhlODBjOWZkYTZfXzE5OmpmOWFBMGlva2hiaFhMWk5EbWMzdTZZbE5LNHpwOFhOSnpFcmU5TjZEX1UxQHRocmVhZC50YWN2MiMjNDU5NWQyZjItN2IzMS00NDZjLTg0ZmQtOWI3OTVlNjMxMTRi"]
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/allMembers/MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMzYzgxODVhNy04ZDA5LTRkODQtYTY0MS1lYjhlODBjOWZkYTZfXzE5OmpmOWFBMGlva2hiaFhMWk5EbWMzdTZZbE5LNHpwOFhOSnpFcmU5TjZEX1UxQHRocmVhZC50YWN2MiMjNDU5NWQyZjItN2IzMS00NDZjLTg0ZmQtOWI3OTVlNjMxMTRi
```

#### Response

The following example shows the response for an indirect member. The **@microsoft.graph.originalSourceMembershipUrl** property identifies the source team.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('2ab9c796-2902-45f8-b712-7c5a63cf41c4')/channels('19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2')/allMembers/$entity",
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "@microsoft.graph.originalSourceMembershipUrl": "https://graph.microsoft.com/beta/tenants/2432b57b-0abd-43db-aa7b-16eadd115d34/teams/1e769eab-06a8-4b2e-ac42-1f040a4e52a1/members/MCMjMSMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMzYzgxODVhNy04ZDA5LTRkODQtYTY0MS1lYjhlODBjOWZkYTYjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
  "id": "MCMjNCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMzYzgxODVhNy04ZDA5LTRkODQtYTY0MS1lYjhlODBjOWZkYTZfXzE5OmpmOWFBMGlva2hiaFhMWk5EbWMzdTZZbE5LNHpwOFhOSnpFcmU5TjZEX1UxQHRocmVhZC50YWN2MiMjNDU5NWQyZjItN2IzMS00NDZjLTg0ZmQtOWI3OTVlNjMxMTRi",
  "roles": [],
  "displayName": "Eric Solomon",
  "userId": "b3246f44-c091-4627-96c6-25b18fa2c910",
  "email": "ericsol@contoso.com",
  "tenantId": "df81db53-c7e2-418a-8803-0e68d4b88607"
}
```


### Example 3: Use $select to get specific properties

The following example shows how to use the `$select` query parameter to retrieve specific properties.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "channel-allmembers-get-member-select",
  "sampleKeys": ["2ab9c796-2902-45f8-b712-7c5a63cf41c4", "19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2", "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg=="]
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teams/2ab9c796-2902-45f8-b712-7c5a63cf41c4/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/allMembers/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==?$select=id,displayName,roles
```

#### Response

The following example shows the response with only the selected properties.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationMember"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('2ab9c796-2902-45f8-b712-7c5a63cf41c4')/channels('19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2')/allMembers(id,displayName,roles)/$entity",
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "@microsoft.graph.originalSourceMembershipUrl": "https://graph.microsoft.com/beta/tenants/2432b57b-0abd-43db-aa7b-16eadd115d34/teams/3c8185a7-8d09-4d84-a641-eb8e80c9fda6/channels/19:jf9aA0iokhbhXLZNDmc3u6YlNK4zp8XNJzEre9N6D_U1@thread.tacv2/members/MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
  "id": "MCMjMyMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOTpqZjlhQTBpb2toYmhYTFpORG1jM3U2WWxOSzR6cDhYTkp6RXJlOU42RF9VMUB0aHJlYWQudGFjdjIjIzQ1OTVkMmYyLTdiMzEtNDQ2Yy04NGZkLTliNzk1ZTYzMTE0Yg==",
  "displayName": "Caleb Foster",
  "roles": [
    "owner"
  ]
}
```

## Related content

- [List allMembers](channel-list-allmembers.md)
- [Get member of channel](channel-get-members.md)
- [Get member of team](team-get-members.md)
- [conversationMember](../resources/conversationmember.md) resource
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "channel get allmember",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
